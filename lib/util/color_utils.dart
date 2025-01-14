class ColorUtils {

  static String getColorByIndex(int index) {
    switch(index) {
      case 0:
        return 'FFB3B3';
      case 1:
        return 'FFB84D';
      case 2:
        return 'FFFF99';
      case 3:
        return 'B3FFB3';
      case 4:
        return '99CCFF';
      case 5:
        return '6699CC';
      case 6:
        return 'CC99FF';
      default:
        return 'D3D3D3';
    }
  }

}