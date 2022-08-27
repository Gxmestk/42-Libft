#include "libft.h"

int		ft_strncmp(const char *str1, const char *str2, size_t len)
{
	size_t	i;

	if (len == 0)
		return (0);
	i = 0;
	while (str1[i] == str2[i] && str1[i] != '\0')
	{
		if (i < (len - 1))
			i++;
		else
			return (0);
	}
	return ((unsigned char)(str1[i]) - (unsigned char)(str2[i]));
}