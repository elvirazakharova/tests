#downcase �� �������� � �������� �������.
#gem install activesupport

def palinom?(arg1)
  rez = false
  arg2 = "" #����� ����� ������ "������" ������
  #��� ������� ��������, ��� ��� ����� �������
  #arg2 = (arg1.tr(" _ -,.?", '')).downcase  # ������� 1. ����� �������� ��� ������� ���������� �� �������
  #arg2 = (arg1.tr("^a-zA-Z�-��-�", '')).downcase #������� 2. ����� �������� ���, ��� �� ����� (������� ��� ����������) �� �������
  #arg1.downcase.scan(/["�-��-�a-zA-Z"]/).each { |aa| arg2<<aa } #������� 3. ����� ������� ����� �������� �������� \w �� �������� ������
  #arg1.downcase.scan(/["�-��-�a-zA-Z"]/).each { |aa| arg2.concat(aa) } #������� 4. �� �� �����, ��� � 3
  #arg1.downcase.each_char { |aa| arg2.concat(aa) if /["�-��-�a-zA-Z"]/ =~ aa } #������� 5. ������ ����� ����� � ����� ������.
  arg1.downcase.each_char { |aa| arg2.concat(aa) if /["�-��-�a-zA-Z"]/ =~ aa } #������� 5. ������ ����� ����� � ����� ������.
  puts "������ ������: #{arg2}"
  if arg2 == arg2.reverse && arg2 != ""
    rez = true
  end
  return rez
end

a = "� ���� ����� �� ���� �����?, ---------12324235346" #  "�����"
puts palinom?(a)
b = ""
puts palinom?(b)
c = "DSDS     (ssD) s     d!"
puts palinom?(c)
d = "�� ���� �� �������"
puts palinom?(d)
STDIN.getc