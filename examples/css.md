
center
  vertically table
    .selector {
      display: table-cell;
      vertical-align: middle;
      text-align:center;
    }

  vertically transform
    .parent-selector {
      transform-style: preserve-3d; /* prevents from child being blurry */
    }

    .selector {
      position: relative;
      top: 50%;
      transform: translateY(-50%);
    }

  vertically line
    constraint Only works on single lines of text.
    .parent {
      height: 100px;
      line-height: 100px;
    }
    <div class="parent">
      <p>Content</p>
    </div>

  vertically flexbox
    .parent {
      height: 200px;
      display: flex;
    }
    .child {
      align-items: center;
      display: flex;
    }
    <div class="parent">
      <p class="child">Content</p>
    </div>

  vertically padding
    constraint If it's only 1 line, like a table row, then you can use padding. Then for the icon, position absolute and use the relative trick.

calculate
  font width
    http://blog.bripkens.de/2011/06/html-javascript-calculate-text-dimensions/

position
  sidebar
    http://stackoverflow.com/a/8451485/169992
    .container { 
      overflow: hidden; 
      .... 
    } 

    #sidebar { 
      margin-bottom: -5000px; /* any large number will do */
      padding-bottom: 5000px; 
      .... 
    } 

  sidebar 2
    http://stackoverflow.com/questions/791231/css-sidebar-height-100
    #container {
    display: table;
    }
    #main {
    display: table-cell;
    vertical-align: top;
    }
    #sidebar {
    display: table-cell;
    vertical-align: top;
    } 

flexbox align sidebar to chunks, with bottom
    
  .Navigation-header {
  }

  .Navigation-body {
    flex: 1;
  }

  .Navigation-footer {
    
  }

  (super weird, that middle `flex: 1` says basically to fill width)
