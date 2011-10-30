program Crew;



{$R *.dres}

uses
  midaslib, classes,
  CoreClasses,
  ConfigServiceIntf,
  bfwApp,
  bfwModules;

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
