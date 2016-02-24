
import terms from './terms'

export default function(mainAction) {
  recompile(mainAction.actions, implementation)
  watch()
}

/**
 * 1. Go through all the "problem" records.
 * 2. Find the current state and the desired state
 *   - print problem that are missing either current state or desired state ("debugging")
 *   - generate assertions from states
 * 3. Find the actions that solve the problem
 *   - print problems that don't have any actions that solve the problem (helping you find which ones remain to be solved)
 * 4. Find the implementation of that action in js
 *   - print missing action implementations, so we know what's left to do
 * 5. Evaluate the solution to the problem
 *   - this will show you iteratively, what problems are solved, and what the outputs of those solutions create
 *   - run assertions before, call action, and run assertions afterward
 */

export function watch() {
  on('change', function(records, implementation){
    recompile(records, implementation)
  })
}

export function recompile(actions, implementation) {
  actions.forEach(function(action){
    let moduleName = action.moduleName
    let actionName = action.actionName
    let fn = implementation[moduleName][actionName]
    let args = action.inputs.map((input) => input.value)
    evaluate(fn, args)
  })
}

export function evaluate(fn, args) {
  let result = fn.apply(null, args)
  print(result)
}

function print(object) {
  console.log(object)
}

