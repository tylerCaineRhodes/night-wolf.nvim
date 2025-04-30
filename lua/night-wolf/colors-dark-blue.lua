local colors = {
  -- Basic colors
  white = "#FFFFFF",
  black = "#000000",

  -- Theme colors (Dark Blue variant)
  principal = "#101E2C",  -- rgb(16, 30, 44)
  principal_0 = "#14283C", -- rgb(20, 40, 60)
  principal_1 = "#1B324A", -- rgb(27, 50, 74)
  principal_2 = "#1E4667", -- rgb(30, 70, 103)
  principal_3 = "#305A84", -- rgb(48, 90, 132)
  principal_4 = "#5F82A5", -- rgb(95, 130, 165)
  principal_5 = "#7BA5CF", -- rgb(123, 165, 207)

  text = "#BDD2E7", -- rgb(189, 210, 231)

  -- Git colors (solid colors instead of transparent)
  gitInsertedBg = "#1E2C35", -- solid alternative to rgba(153, 183, 109, 0.15)
  gitRemovedBg = "#2C2535", -- solid alternative to rgba(239, 83, 80, 0.15)
  gitIgnoreExplorer = "#284B70", -- principal.brighten(1.5)

  -- Interface colors
  interBackground = "#101E2C",
  interBorder = "#1B324A",
  notificationBadge = "#9CD9FF", -- infoLight

  -- Selection colors (solid alternatives to transparent colors)
  selection_0 = "#1A2938", -- solid alt to rgba(123, 165, 207, 0.1)
  selection_1 = "#20354A", -- solid alt to rgba(123, 165, 207, 0.2)
  selection_2 = "#26405B", -- solid alt to rgba(123, 165, 207, 0.3)
  selection_3 = "#2F4C6B", -- solid alt to rgba(123, 165, 207, 0.4)
  selection_4 = "#274558", -- solid alt to rgba(30, 70, 103, 0.6)

  -- Syntax colors
  syntaxRed = "#FF7878", -- rgb(255, 120, 120)
  syntaxRedIntense = "#FF50B4", -- rgb(255, 80, 180)
  syntaxOrange = "#FFB482", -- rgb(255, 180, 130)
  syntaxDarkOrange = "#FF9966", -- rgb(255, 153, 102)
  syntaxYellow = "#FFDC96", -- rgb(255, 220, 150)
  syntaxBeige = "#DBD4BA", -- rgb(219, 212, 186)
  syntaxGreen = "#AAE682", -- rgb(170, 230, 130)
  syntaxCyan = "#00DCDC", -- rgb(0, 220, 220)
  syntaxLightBlue = "#86E0F4", -- rgb(134, 224, 244)
  syntaxBlue = "#00B1FF", -- rgb(0, 177, 255)
  syntaxViolet = "#9696FF", -- rgb(150, 150, 255)
  syntaxPurple = "#DC8CFF", -- rgb(220, 140, 255)
  syntaxMagenta = "#FF50FF", -- rgb(255, 80, 255)

  -- Contrast colors
  contrast = "#FF50FF", -- syntaxMagenta
  contrastLight = "#FFBEFF", -- rgb(255, 190, 255)
  contrastDark = "#960096", -- rgb(150, 0, 150)

  comment = "#647882", -- rgb(100, 120, 130)

  -- State colors
  infoDark = "#284864", -- rgb(40, 72, 100)
  info = "#64B4FA", -- rgb(100, 180, 250)
  infoLight = "#9CD9FF", -- rgb(156, 217, 255)

  successDark = "#2C4820", -- rgb(44, 72, 32)
  success = "#6EB450", -- rgb(110, 180, 80)
  successLight = "#A1D884", -- rgb(161, 216, 132)

  warningDark = "#665010", -- rgb(102, 80, 16)
  warning = "#FFC828", -- rgb(255, 200, 40)
  warningLight = "#FFE39C", -- rgb(255, 227, 156)

  dangerDark = "#472020", -- rgb(71, 32, 32)
  danger = "#F05050", -- rgb(240, 80, 80)
  dangerLight = "#D88282", -- rgb(216, 130, 130)

  -- Semantic colors
  variable = "#FFDC96", -- syntaxYellow
  variableProperty = "#BDD2E7", -- text
  contrastText = "#FF7878", -- syntaxRed
  variableInstance = "#FFB482", -- syntaxOrange
  specialWordA = "#00B1FF", -- syntaxBlue
  specialWordB = "#9696FF", -- syntaxViolet
  specialWordC = "#DC8CFF", -- syntaxPurple
  functionName = "#00DCDC", -- syntaxCyan
  string = "#AAE682", -- syntaxGreen
  operator = "#FF7878", -- syntaxRed = contrastText
  regularText = "#BDD2E7", -- text
  number = "#FFB482", -- syntaxOrange
  boolean = "#FF7878", -- syntaxRed = contrastText
  nullUnd = "#FF7878", -- syntaxRed = contrastText
  punctuation = "#BDD2E7", -- regularText
  deprecated = "#F05050", -- danger

  -- Markup colors
  htmlTag = "#FF7878", -- contrastText
  metaTag = "#BDD2E7", -- text
  tagAttribute = "#9696FF", -- specialWordB
  pugClass = "#FFDC96", -- variable

  -- Stylesheet colors
  cssAttribute = "#AAE682", -- syntaxGreen
  cssValue = "#FFB482", -- syntaxOrange
  cssTag = "#FF7878", -- syntaxRed
  cssClass = "#FFDC96", -- syntaxYellow
  cssId = "#00B1FF", -- syntaxBlue
  cssProperty = "#00DCDC", -- syntaxCyan
  cssUnits = "#FFB482", -- number
  cssSpecialWord = "#9696FF", -- syntaxViolet
  cssPseudoClass = "#DC8CFF", -- syntaxPurple
  sassFunction = "#00B1FF", -- syntaxBlue
  sassInterpolation = "#FF7878", -- syntaxRed
}

return colors
