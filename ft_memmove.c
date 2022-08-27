/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tkhemniw <gt.khemniwat@gmail.com>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/08/27 14:03:39 by tkhemniw          #+#    #+#             */
/*   Updated: 2022/08/27 16:58:26 by tkhemniw         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include"libft.h"

void	*ft_memmove(void *dst, const void *src, size_t len)
{
	unsigned char	*p_src;
	unsigned char	*p_dst;

	if (!dst || !src)
		return (NULL);
	p_src = (unsigned char *)src;
	p_dst = (unsigned char *)dst;
	if (dst > src)
	{
		while (len-- > 0)
			p_dst[len] = p_src[len];
	}
	else
		while (len-- > 0)
			*(p_dst++) = *(p_src++);
	return (dst);
}
