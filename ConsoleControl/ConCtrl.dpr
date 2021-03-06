{******************************************************************************}
{* (c) Max Rusov                                                              *}
{* Console Control                                                            *}
{* License: WTFPL                                                             *}
{* Home: https://github.com/MaxRusov/far-plugins                              *}
{******************************************************************************}

library ConCtrl;

{$I Defines.inc}

{$AppType Console}
{$ifdef Debug}
 {$ImageBase $40000000}
{$endif Debug}

uses
//MixErrors,
 {$ifdef bTrace}
  MixCheck,
 {$endif bTrace}
  MixFormat,
  FarPlug,
  ConCtrlMain;

exports
 {$ifdef Far3}
  GetGlobalInfoW,
 {$endif Far3}

  SetStartupInfoW,
  GetPluginInfoW,

 {$ifdef Far3}
  OpenW,
 {$else}
  OpenPluginW,
 {$endif Far3}

 {$ifdef Far3}
  ProcessConsoleInputW,
 {$endif Far3}

  ConfigureW;
//ExitFARW;

{$R ConCtrlW.res}

begin
  Plug := TConCtrlPlug.Create;
end.
