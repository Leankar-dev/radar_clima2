abstract final class AppStrings {
  static const appTitle = 'Radar Clima';

  static const searchLabel = 'Digite uma cidade';
  static const searchEmptyError =
      'Digite o nome de uma cidade antes de buscar.';

  static const unexpectedError = 'Ocorreu um erro inesperado. Tente novamente.';
  static const retryButton = 'Tentar novamente';
  static const networkError =
      'Sem conexão com a internet. Verifique seu Wi-Fi ou dados móveis.';
  static const timeoutError =
      'Conexão lenta. Verifique sua internet e tente novamente.';
  static const serverError = 'Erro no servidor. Tente novamente mais tarde.';
  static const cityNotFoundError =
      'Cidade não encontrada. Verifique o nome e tente novamente.';
  static const apiKeyInvalidError =
      'Erro de autenticação com a API. Contate o suporte.';

  static const humidity = 'Umidade';
  static const wind = 'Vento';
  static const uvIndex = 'Índice UV';
  static const feelsLike = 'Sensação';

  static const celsius = '°C';
  static const windUnit = 'km/h';
  static const humidityUnit = '%';

  static const settings = 'Configurações';
  static const themeLabel = 'Tema';
  static const themeLightOption = 'Claro';
  static const themeDarkOption = 'Escuro';
  static const themeSystemOption = 'Sistema';
  static const aboutCard = 'Sobre o app';
  static const developerLabel = 'Programador';
  static const developerName = 'Leankar.dev';
  static const developerEmail = 'leankar.dev@gmail.com';
  static const developerWebsite = 'https://leankar.dev';
  static const versionLabel = 'Versão';
  static const privacyPolicy = 'Política de Privacidade';
  static const start = 'Inicio';

  static const defaultCity = 'São Paulo';

  static const cancelButton = 'Cancelar';
  static String disambiguationTitle(String cityName) =>
      'Qual "$cityName" você quis dizer?';
}
