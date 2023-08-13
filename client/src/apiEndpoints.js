export const apiProtocol = window.location.protocol;

export const apiHostname = window.location.hostname;

export const apiPort = 5000;

export const serverURL = `${apiProtocol}//${apiHostname}:${apiPort}`;

export const skatersURL = `${serverURL}/skaters`;

export const results500URL = `${serverURL}/results_500`;

export const results1000URL = `${serverURL}/results_1000`;

export const results1500URL = `${serverURL}/results_1500`;

export const countriesURL = `${serverURL}/countries`;
