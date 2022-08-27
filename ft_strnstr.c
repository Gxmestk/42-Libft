#include"libft.h"

char	*ft_strnstr(const char *str, const char *to_find, size_t len)
{
	char *haystack;
	char *needle;;

	if (!to_find)
		return ((char *)str);
    haystack = str;
	needle = to_find;
	while (true)
	{
         
		if (*needle == '\0')
			return ((char *)(haystack - (needle - to_find)));
		if (*haystack == *needle)
			needle++;
		else
			needle = to_find;
		if (len == 0 || *haystack == '\0')
			break ;
		haystack++;
        len--;
	}
	return (NULL);
}