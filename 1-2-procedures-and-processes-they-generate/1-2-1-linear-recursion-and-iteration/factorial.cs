using System;

namespace SICP
{
		public static class Math
		{
				public static int Fact1(int n)
				{
						if(n == 1)
						{
						    return 1;
						}
						else
						{
								return n * Fact1(n-1);
						}
				}

				private static int Fact2Iter(int product, int counter, int maxCount)
				{
						if (counter > maxCount)
						{
								return product;
						}
						else
						{
								return Fact2Iter(counter*product, counter+1, maxCount);
						}
				}
				
				public static int Fact2(int n) => Fact2Iter(1, 1, n);

				public static void Main()
				{
						Console.WriteLine($"{Fact1(7)}");
						Console.WriteLine($"{Fact2(7)}");
				}
		}
}

// Start with
// csc factorial.cs && mono factorial.exe
