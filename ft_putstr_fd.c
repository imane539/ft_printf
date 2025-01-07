/******************************************************************************/
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putstr_fd.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: iel-fouh <iel-fouh@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/29 11:32:00 by iel-fouh          #+#    #+#             */
/*   Updated: 2025/01/07 14:43:56 by iel-fouh         ###   ########.fr       */
/*                                                                            */
/******************************************************************************/

#include "libft.h"

int	ft_putstr_fd(char *s, int fd)
{
	size_t	size;

	if (!s)
		return (-1);
	size = ft_strlen(s);
	write(fd, s, size);
	return (size);
}
