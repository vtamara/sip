# encoding: UTF-8

# Ideas de https://www.sitepoint.com/speed-up-with-materialized-views-on-postgresql-and-rails/
module Sip
  class Mundep < ActiveRecord::Base
    self.table_name = 'sip_mundep'

    def readonly?
      true
    end

    def self.refresca()
      ActiveRecord::Base.connection.execute('REFRESH MATERIALIZED VIEW sip_mundep')
    end

  end
end
