#downcase ����������� ��� �������� �����
def downcase_r (arg)
    alpha1 = (('�'..'�').to_a )<<'�'
    alpha2 = (('�'..'�').to_a )<<'�'
    for i in 0..(arg.length-1) do
        #puts "i= #{i}"
        if  alpha1.index(arg[i])
            arg[i] = alpha2[alpha1.index(arg[i])]
        end
    end
    #arg1 = arg.join('')
    arg.downcase
end
#������� �������
def palinom?(arg1)
    if arg1 
      rez = false
      arg2 = "" #����� ����� ������ "������" ������
      arg1.each_char { |aa| arg2.concat(aa) if /["�-��-�a-zA-Z��"]/ =~ aa } # ������ ����� ����� � ����� ������.
      arg2 = downcase_r(arg2)
      puts "������ ������: #{arg2}"
      if arg2 == arg2.reverse && arg2 != ""
        rez = true
      end
    else
       rez = false
  end
  rez #return ������. 
end
#���� ��������, � ��� ����� � ������ ������
a = "� ���� ����� �� ���� �����?, ---------12324235346" #  "�����"
puts palinom?(a)
b = nil
puts palinom?(b)
c = "DSDS     (ssD) s     d!"
puts palinom?(c)
d = "�� ���� �� �������"
puts palinom?(d)
d = "����� fdfff D        f--�����"
puts palinom?(d)
#STDIN.getc