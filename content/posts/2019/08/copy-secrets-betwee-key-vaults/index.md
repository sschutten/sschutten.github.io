{
  "author": "Sander Schutten",
  "date": "2019-08-07T09:35:50Z",
  "description": "",
  "draft": true,
  "slug": "copy-secrets-betwee-key-vaults",
  "title": "Copy secrets betwee Key Vaults",
  "menu": {
    "sidebar": {
      "name": "Copy secrets betwee Key Vaults",
      "weight": 201908,
      "identifier": "copy-secrets-betwee-key-vaults",
      "parent": "2019/08"
    }
  }
}


<iframe width="480" height="270" src="https://www.youtube.com/embed/dreyY6WmAq4?feature=oembed" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

$sourceVaultName = "nikki-tst"$destVaultName = "company-connect-tst"

Connect-AzAccount

$secretNames = (Get-AzKeyVaultSecret -VaultName $sourceVaultName).Name$secretNames.foreach{Set-AzKeyVaultSecret -VaultName $destVaultName -Name $_ `-SecretValue (Get-AzKeyVaultSecret -VaultName $sourceVaultName -Name $_).SecretValue}

