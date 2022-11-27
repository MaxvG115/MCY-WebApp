class AcademicProgram < ApplicationRecord
    def self.import(file)
        CSV.foreach(file, encoding:'bom|utf-8', headers: true) do |row|
            AcademicProgram.create! row.to_hash
        end
    end
end
