object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 363
  Width = 592
  object tabCadastro: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 24
    Top = 32
    object tabCadastroCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tabCadastroNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object tabCadastroCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
  end
end
