#include "libft.h"

int ft_isalpha(int c)
{
	if ((c <= 'z' && c >= 'a') || (c <= 'Z' && c >= 'A'))
		return (1024);
	else
		return (0);
}
