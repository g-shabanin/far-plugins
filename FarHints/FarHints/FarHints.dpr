{******************************************************************************}
{* Far Hints                                                                  *}
{* Author: Max Rusov                                                          *}
{* License: WTFPL                                                             *}
{* Home: https://github.com/MaxRusov/far-plugins                              *}
{******************************************************************************}

library FarHints;

{$I Defines.inc}

{$APPTYPE CONSOLE}
{$ifdef Debug}
 {$ImageBase $40300000}
{$endif Debug}

uses
  MixErrors,
 {$ifdef bTrace}
  MixCheck,
 {$endif bTrace}
  FarPlug,
  FarHintsMain;

exports
 {$ifdef Far3}
  GetGlobalInfoW,
 {$else}
  GetMinFarVersionW,
 {$endif Far3}
  SetStartupInfoW,
  GetPluginInfoW,
 {$ifdef Far3}
  OpenW,
 {$else}
  OpenPluginW,
 {$endif Far3}
 {$ifdef bSynchroCall}
  ProcessSynchroEventW,
 {$endif bSynchroCall}
  ConfigureW,
  ExitFARW,

  GetFarHinstAPI;
  

 {$ifdef Unicode}
  {$R FarHintsW.res}
 {$else}
  {$R FarHintsA.res}
 {$endif Unicode}

begin
  Plug := TFarHinstPlug.Create;
end.
