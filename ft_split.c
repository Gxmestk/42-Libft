#include "libft.h"

typedef struct s_split_list
{
	size_t	len;
	char	*bw;
	struct s_list	*next;
}	t_split_list;

t_split_list	*ft_create_elem(size_t len, char *bw)
{
	t_split_list *list;

	list = (t_split_list *)malloc(sizeof(t_split_list));
	list->next = NULL;
	list->len = len;
	list->bw = bw;
	return (list);
}
char **ft_split(char const *s, char c)
{
	size_t	wc;
	char **ss;
	size_t	i;
	t_split_list *spl;
	size_t	lc;
	char	*bw;

	if (!s)
		return NULL;
	//case if !c
	wc = 0;
	lc = 0;
	i = 0;
	bw = s[0];
	while (s[i])
	{
		lc++;
		if (s[i] == c)
		{
			lc = 0;
			s[i] = '\0';
		}
		if (i > 0 && s[i - 1] != '\0' && s[i] == '\0')
		{
			wc++;
			spl = ft_create_elem(lc, bw)
			bw = s[i];
		}
		i++;
	}
	ss = (char **)malloc(sizeof(char *) * (wc + 1));
	while ()
	

	return NULL;
}

int	main()
{
	char str[] = "Games is Super Man";
	char **s = ft_split(str,' ');
	s++;
	/*while (*s != NULL)
	{
		printf("%s\n",**s);
		*s++;
	}*/
}