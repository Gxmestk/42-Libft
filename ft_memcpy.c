/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tkhemniw <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/08/27 11:56:14 by tkhemniw          #+#    #+#             */
/*   Updated: 2022/08/27 17:06:34 by tkhemniw         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memcpy(void *dest, const void *src, size_t len)
{
	char		*p_dest;
	const char	*p_src;

	p_dest = (char *)dest;
	p_src = (char *)src;
	while (len-- > 0)
		*(p_dest++) = *(p_src++);
	return (dest);
}
/*
int main()
{

	printf("%p\n",ft_memcpy("            ", NULL, 17));
}*/