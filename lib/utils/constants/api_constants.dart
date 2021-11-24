/// Api constants for endpoints and other network related fields
class ApiConstants {
  static const scheme = 'https';
  static const host = 'swapi.dev';

  static const receiveTimeout = 3000;
  static const sendTimeout = 5000;

  static get baseUri => Uri(scheme: scheme, host: host, path: '/');
  static get getPeopleUri =>
      Uri(scheme: scheme, host: host, path: '/api/people/');
}
