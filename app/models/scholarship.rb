class Scholarship < ApplicationRecord
    def self.import(file)
        CSV.foreach(file, encoding:'bom|utf-8', headers: true) do |row|
            Scholarship.create! row.to_hash
        end
    end
end
