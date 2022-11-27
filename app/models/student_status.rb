class StudentStatus < ApplicationRecord
    def self.import(file)
        CSV.foreach(file, encoding:'bom|utf-8', headers: true) do |row|
            StudentStatus.create! row.to_hash
        end
    end
end
