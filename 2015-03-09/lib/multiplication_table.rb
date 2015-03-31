class MultiplicationTable
  attr_reader :size

  def initialize(size = 9)
    @size = size
  end

  def header_row
    (1..size).to_a
  end

  def content
    # [1,2,3,4,...]
    header_row.map do |column|
      header_row.map do |row|
        column * row
      end
    end
  end

  def to_s
    formatted_header_row('*', header_row) +
    content.each_with_index.map do |row, index|
      index += 1
      formatted_header_row(index.to_s, row)
    end.join
  end

  private
  def formatted_header_row(first_column, array, rjust=4)
    output = first_column.rjust(rjust)
    array.each do |number|
      output << number.to_s.rjust(rjust)
    end
    output << "\n"
    output
  end
end
