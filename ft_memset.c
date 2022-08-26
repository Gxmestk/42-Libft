/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memset.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tkhemniw <gt.khemniwat@gmail.com>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/08/25 23:37:44 by tkhemniw          #+#    #+#             */
/*   Updated: 2022/08/26 13:32:23 by tkhemniw         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void    *ft_memset(void *dest, int val, size_t len)
{
    /*if (!dest)
		return (NULL);*/
	while (len-- > 0)
		*((unsigned char*)dest--) = (unsigned char)val;
	return (dest);
}
