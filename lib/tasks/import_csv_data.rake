namespace :db do

  desc "load timezone data from csv"
  task :load_timezone_data  => :environment do
    require 'csv'

    CSV.foreach("uploads/timezones.tsv", :col_sep => "\t", headers: false) do |row|

      begin
        columns = (2..50).to_a
        columns.each do |c|
          name =  row[c]
          if !row[c].nil?
            Timezone.create(
               utc_offset: row[0],
               is_dst: row[1],
               name: row[c]
            )
          end
        end
      rescue StandardError => e
        puts "Error importing row because '#{e.message}'"
        puts row
      end
    end
  end

end
