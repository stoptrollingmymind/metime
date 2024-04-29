(String, String) getCountryCode(String country) {
  switch (country) {
    case 'Brazil':
      return ('+55', 'br');
    case 'USA':
      return ('+1', 'us');
    case 'Germany':
      return ('+49', 'de');
    case 'Russian':
      return ('+7', 'ru');
    case 'France':
      return ('+33', 'fr');
    default:
      return ('+55', 'br');
  }
}