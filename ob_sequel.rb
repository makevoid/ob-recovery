require_relative 'env'

db = "/home/#{`whoami`.strip}/.openbazaar/OB-Mainnet.db"

db = "/Users/#{`whoami`.strip}/Library/Application\ Support/OpenBazaar/OB-Mainnet.db" if `uname`.strip == "Darwin"


DB = Sequel.connect "sqlite://#{db}"


puts DB[:keys].find{ |key| key[:type] == "bitcoin" }[:privkey]
