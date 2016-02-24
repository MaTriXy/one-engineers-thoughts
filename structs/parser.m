
Now the last question is, how to get something out of the LR parser!

example algorithm get first, for lr parser
  https://github.com/kkoch986/js-parse/blob/master/lib/parser/utils/first_set.js

example algorithm parse, for lr parser
  https://github.com/kkoch986/js-parse/blob/master/lib/parser/lr_parser.js
  https://github.com/guangwong/aeropress/blob/master/lib/lr1.js#L64-L73

code js
  preProcessing ();
  buildNullable ();
  buildFirst ();
  buildItemSets ();
  buildTable();

  Creating associated generation after // End Table PDA category
  me.pda =  new  PDA ({
      table : table
  });

example parser parse
  function parser_parse(string) {
    for (var character in string) {
      pda_in(wrapSymbol(character, token));
    }
    pda_in(wrapSymbol(SUPER_SYMBOL_END));
  }

example parse, in js
  // pda =  { [state]: { [symbol]: action } }
  // action = { value, symbol }

  var list_pattern = [];
  var list_state = [];

  function parse_using_left_recursion(machine, input, raise) {
    var state_current = list_state[list_state.length - 1];
    var action = machine[state_current][input.pattern];

    switch (action.type) {
      case 'goto':
        list_pattern.push(input);
        list_state.push(action.state_next);
        break;
      case 'shift':
        list_pattern.push(input);
        list_state.push(action.state_next);
        break;
      case 'reduce':
        var popped = getPopped();
        parse_using_left_recursion(machine, wrapSymbol(action.pattern, popped), raise);
        parse_using_left_recursion(machine, input, raise);
        break;
      case 'accept':
        var popped = getPopped();
        return wrapSymbol(action.pattern, popped);
      default:
        raise('machine', input);
        break;
    }

    function getPopped() {
      var popped = [];

      for (var i = 0, n = action.state_next; i < n; i++) {
        list_state.pop();
        var pattern = list_pattern.pop();
        popped.push(pattern);
      }

      popped = popped.reverse();

      return popped;
    }
  }

  function wrapSymbol(symbol, state) {
    return {
      symbol: symbol,
      state: state
    };
  }

example first, in js, from https://github.com/guangwong/aeropress/blob/master/lib/lr1.js#L64-L73

  /**
   * Build firstOfNonterminal table
   * Get every nonterminal First Set
   */

  function buildFirst() {
    firstOfNonterminals = {}; // initialize a table, First collection for each nonterminal

    var goOn = true;
    while (goOn){
      goOn = false;
      var nonterminal;
      var productionsOfNonterminal;
      var firstSet;

      // loop through nonterminals
      for (nonterminal in nonterminals) {
        productionsOfNonterminal = nonterminals[nonterminal];
        firstSet = firstOfNonterminals[nonterminal];

        // initialize default value
        if (!firstSet) {
          firstSet = firstOfNonterminals[nonterminal] = {};
        }

        productionsOfNonterminal.forEach(function(production){
          var rhs = production.rhs;
          var dot = 0;
          var symbolAtDot;
          var firstSymbolOfNT;

          while (true) {
            symbolAtDot = rhs[dot];
            if (!symbolAtDot) break;

            // If a nonterminal First change, we must do it again, because other students to rely on it to deduce First
            if (terminals.hasOwnProperty(symbolAtDot) && !firstSet.hasOwnProperty(symbolAtDot)) {
              goOn = true;
              firstSet[symbolAtDot] = symbolAtDot;
            }

            if (firstOfNonterminals.hasOwnProperty(symbolAtDot)) {
              for (firstSymbolOfNT in firstOfNonterminals[symbolAtDot]) {
                if (!firstSet.hasOwnProperty(firstSymbolOfNT)) {
                  goOn = true;
                  firstSet[firstSymbolOfNT] = firstSymbolOfNT;
                }
              }
            }

            if (terminals.hasOwnProperty(symbolAtDot) // If it is the end of the symbol
              ||  ( // or do not have nullable nonterminal nature
                nonterminals.hasOwnProperty(symbolAtDot)
                  && !nullableSymbols.hasOwnProperty(symbolAtDot)
                )
              )
              break;
            dot++;
          }
        });
      }
    }
  }

example get item sets, in js

  /**
   * Build itemSets table.
   */

  function buildItemSets(){
    var goOn = true;
    var initFollows = {};
    initFollows[SUPER_SYMBOL_END] = SUPER_SYMBOL_END; // will terminate the symbol as $ G Follow
    var initItemSet = new ItemSet({ // This is the state 0
      items : [
        new Item({
          core : true,
          production : productions[0],
          dotPosition : 0,
          follows : initFollows
        })
      ]
    });
    itemSets = [ closure(initItemSet) ]; // initialize the itemSets table simultaneously

    while (goOn) {
      goOn = false;
      itemSets.forEach(function(itemSet, idxAtItemSets){
        for (var symbol in symbols) {
          var gotoResp = goto(itemSet, symbol); // to the state of the input of all the symbols, to give a possible transfer
          if (gotoResp && !hasItemSet(gotoResp)) {
            gotoResp.from = idxAtItemSets + ":" + symbol; // Flag this state sources
            itemSets.push(gotoResp);
            itemSet.to = itemSet.to || [];
            itemSet.to.push(symbol + ":" + itemSets.length - 1); // Mark all the possible transfer out
            goOn = true;
          }
        }
      });
    };
  }

example get closure, in js

  /**
   * For item sets closure operation.
   *
   * @param itemSet
   * @returns {itemSet}
   */

  function closure(itemSet){
    var goOn = true;
    var items = itemSet.items;
    while (goOn) {
      goOn = false;
      items.forEach(function(item, itemIdx) {
        var dotPosition = item.dotPosition;
        var production = item.production;
        var rhs = production.rhs;
        var dotSymbol = rhs[dotPosition];

        var productionOnDotsymbol = nonterminals[dotSymbol];
        if (productionOnDotsymbol) {
          var follows = first(rhs.slice(dotPosition+1), item.follows);
          productionOnDotsymbol.forEach(function(production) {
            var newItem =  new Item({
              dotPosition : 0,
              production : production,
              follows : follows
            });

            if (!itemSet.has(newItem)) {
              goOn = true;
              items.push(newItem);
            }
          });
        }
      });
    }
    return itemSet;
  }

example goto, in js

  /**
   * Calculate the state transition
   *
   * @param itemSet
   * @param symbol
   * @returns {itemSet|Null}
   */

  function goto(itemSet, symbol) {

    var newItems = [];
    var items = itemSet.items;

    // Draw kernel entry
    items.forEach(function(item) {
      var newDotPosition = item.dotPosition + 1;
      var production = item.production;
      var rhs = production.rhs;
      var dotSymbol = rhs[newDotPosition - 1];
      if (dotSymbol === symbol) {
        newItems.push(
          new Item({
            core : true,
            follows : item.follows,
            production : production,
            dotPosition : newDotPosition
          })
        );
      }
    });

    if (newItems.length) { // If the transfer to the kernel entry, proceeds closure operations are expanded
      return closure(new ItemSet({
        items : newItems
      }));
    } else {
      return null;
    }

  }

example build table, in js

  /**
   * Build table table
   * BuildTable The core idea is to set a state item collection collection view, PDA build the relationship between the state
   * State relations into Action (Shift and Reduce) and GOTO, Action is a term set internal conversion, GOTO is jumping between states
   */

  function buildTable() {

    table = {
      action : [],
      goto : []
    };

    itemSets.forEach(function(itemSet, itemSetIdx){

      var actionOfItemSet = table.action[itemSetIdx] = {};
      var gotoOfItemSet = table.goto[itemSetIdx] = {};

      for (var terminal in terminals) {
        var gotoResp = goto(itemSet, terminal);
        if (gotoResp) {
          actionOfItemSet[terminal] = {
            type : "shift",
            value: findItemSetIdx(gotoResp)
          };
        }
      }

      // Mark Reduce and receive status
      itemSet.items.forEach(function(item){
        var followTerminal;
        var actionType = "reduce";
        if (item.production.rhs.length === item.dotPosition) {
          if (item.production.symbol === SUPER_SYMBOL_G) {
            actionType = "accept";
          }

          for (followTerminal in item.follows) {
            var toSet = {
              type: actionType,
              value: item.production.rhs.length,
              symbol: item.production.symbol
            };

            if (actionOfItemSet[followTerminal]) {
              Support.conflict(Error(
                "衝突在狀態" + itemSetIdx + "，慾設定 "
                  + followTerminal + " 為 " + toSet.type + ":" + toSet.value
                  + " 但 " + actionOfItemSet[followTerminal].type + ":" + actionOfItemSet[followTerminal].value
                  + " 早已存在。"
              ));
            } else {
              actionOfItemSet[followTerminal] = toSet;
            }
          }
        }
      });

      for (var nonterminal in nonterminals) {
        var gotoResp = goto(itemSet, nonterminal);
        if (gotoResp) {
          gotoOfItemSet[nonterminal] = {
            type : "goto",
            value: findItemSetIdx(gotoResp)
          };
        }
      }
    });
  }

example pda iterator
  function parse_using_left_recursion(machine, pattern, raise) {
    var current = states[states.length - 1];
    // means, generically, we can build larger machines just by storing nested maps perhaps
    var action = machine[current][pattern];

    switch (action.type) {
      case 'goto':
      case 'shift':
        states.push(action.next);
        break;
      case 'reduce':
        reduce();
        parse_using_left_recursion(machine, action.pattern, raise);
        parse_using_left_recursion(machine, pattern, raise);
        break;
      case 'accept':
        reduce();
        return action.pattern;
      default:
        raise('machine', pattern);
        break;
    }

    function reduce() {
      for (var i = 0, n = action.next; i < n; i++) {
        states.pop();
      }
    }
  }

So the parser is like the brain with the knowledge, and the pda is just one way it navigates the knowledge, using that pda to manipulate it's own memory, to "think".
