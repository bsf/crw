program Crew;



{$R *.dres}

uses
  midaslib,
  CoreClasses,
  bfwShellApp,
  ConfigServiceIntf,
  classes,
  bfwSettingManagerModuleInit,
  bfwSecurityManagerModuleInit,
  bfwStorageNotifierModuleInit,
  bfwReportManagerModuleInit,
  bfwReportEngineXLModuleInit,
  bfwReportEngineFRModuleInit,
  bfwEntityCatalogModuleInit,
  bfwStorageConnIBXModuleInit,
  bfwSecurityBaseControllerModuleInit,
  bfwShellLayoutModuleInit;

{$R *.res}



type
  TCrewApplication = class(TApp)
  protected
    procedure AddServices; override;
  end;

{ TCrewApplication }

procedure TCrewApplication.AddServices;
begin
  ConfigServiceIntf.LOCAL_APP_DATA_KEY := 'Crew\CrewLauncher';
  inherited;
end;

begin
  //Application.Initialize;
 // Application.MainFormOnTaskbar := True;
  //Application.Run;
  TCrewApplication.ShellInstantiate;
end.
