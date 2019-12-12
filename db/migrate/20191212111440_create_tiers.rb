class CreateTiers < ActiveRecord::Migration[6.0]
  def change
    create_table :tiers do |t|
      t.string :name
      t.string :alternate_name
      t.string :prospect_customer # prospect / client
      t.boolean :provider? # est un fournisseur ?
      t.string :etat
      t.string :code_customer
      t.string :code_provider
      t.text :adress
      t.string :zip_code
      t.string :city
      t.string :country
      t.string :department
      t.string :phone
      t.string :fax
      t.string :email
      t.string :website
      t.string :num_siret
      t.string :num_siren
      t.string :num_ape
      t.string :num_rcs
      t.boolean :assuj_tva?
      t.string :num_tva
      t.string :third_party_type # type du tiers
      t.string :employees
      t.string :legale_entity_type
      t.decimal :capital, precision: 10, scale: 2
      t.string :eco_terms
      t.string :devise
      t.string :commercial
      t.string :logo

      t.timestamps
    end
  end
end
