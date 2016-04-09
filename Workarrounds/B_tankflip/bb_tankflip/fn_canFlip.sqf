/*
 * Author: BaerMitUmlaut/BlauBär
 * Checks if the tank is upside down.
 *
 * Arguments:
 * 0: Tank <OBJECT>
 *
 * Return Value:
 * None
 */
params ["_tank"];

(vectorUp _tank) vectorDotProduct (surfaceNormal position _tank) < 0.8
