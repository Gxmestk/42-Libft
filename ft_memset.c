/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memset.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tkhemniw <gt.khemniwat@gmail.com>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/08/25 23:37:44 by tkhemniw          #+#    #+#             */
/*   Updated: 2022/08/26 14:41:05 by tkhemniw         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memset(void *dest, int val, size_t len)
{
	unsigned char	*p_dest;

	p_dest = dest;
	while (len-- > 0)
		*(p_dest++) = (unsigned char)val;
	return (dest);
}
/*if (!dest)
		return (NULL);*/
