local colors = {
	  black        = '#333232',
	  white        = '#e6d8c8',
	  red          = '#cc241d',
	  green        = '#b8bb26',
	  blue         = '#458588',
	  yellow       = '#ffab1f',
	  magenta	   = '#b8329b',
	  gray         = '#2e2b28',
	  darkgray     = '#2e2b28',
	  lightgray    = '#3b3b38',
	  inactivegray = '#57504b',
}
return {
  normal = {
    a = {bg = colors.yellow, fg = colors.black, gui = 'bold'},
    b = {bg = colors.inactivegray, fg = colors.white},
    c = {bg = colors.lightgray, fg = colors.white}
  },
  insert = {
    a = {bg = colors.green, fg = colors.black, gui = 'bold'},
    b = {bg = colors.inactivegray, fg = colors.white},
    c = {bg = colors.lightgray, fg = colors.white}
  },
  visual = {
    a = {bg = colors.blue, fg = colors.black, gui = 'bold'},
    b = {bg = colors.inactivegray, fg = colors.white},
    c = {bg = colors.lightgray, fg = colors.white}
  },
  replace = {
    a = {bg = colors.red, fg = colors.black, gui = 'bold'},
    b = {bg = colors.inactivegray, fg = colors.white},
    c = {bg = colors.black, fg = colors.white}
  },
  command = {
    a = {bg = colors.magenta, fg = colors.black, gui = 'bold'},
    b = {bg = colors.inactivegray, fg = colors.white},
    c = {bg = colors.lightgray, fg = colors.white}
  },
  inactive = {
    a = {bg = colors.darkgray, fg = colors.gray, gui = 'bold'},
    b = {bg = colors.darkgray, fg = colors.gray},
    c = {bg = colors.darkgray, fg = colors.gray}
  }
}
