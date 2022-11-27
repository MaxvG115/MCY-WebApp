class Subject < ApplicationRecord
    def self.import(file)
        CSV.foreach(file, encoding:'bom|utf-8', headers: true) do |row|
            Subject.create! row.to_hash
        end
    end
end
