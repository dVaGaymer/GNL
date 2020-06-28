/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line_utils.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alopez-g <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/01 20:34:52 by alopez-g          #+#    #+#             */
/*   Updated: 2020/02/15 20:02:20 by alopez-g         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/get_next_line.h"

char	*ft_strjoin(char *s1, char *s2)
{
	size_t	len;
	char	*str;
	int		aux;

	if (!s2)
		return (0);
	if (!s1)
		s1 = malloc(1);
	aux = 0;
	len = ft_strlen(s1) + ft_strlen(s2);
	if (!(str = (char *)malloc(sizeof(char) * (len + 1))))
		return (0);
	while (*s1)
		*(str + aux++) = *s1++;
	while (*s2)
		*(str + aux++) = *s2++;
	*(str + len) = 0;
	return (str);
}

size_t	ft_strlen(char *s)
{
	size_t	aux;

	aux = 0;
	while (*(s + aux))
		aux++;
	return (aux);
}

char	*ft_strchr(char *s, int c)
{
	int	aux;

	aux = 0;
	if (!s)
		return (0);
	while (*(s + aux))
	{
		if ((unsigned char)*(s + aux) == (unsigned char)c)
			return ((char *)(s + aux));
		aux++;
	}
	if (*(unsigned char *)(s + aux) == (unsigned char)c)
		return ((char *)(s + aux));
	return (0);
}

char	*ft_strdup(char *s1)
{
	char	*str;
	int		i;

	i = 0;
	if (!(str = (char *)malloc(sizeof(char) * ((int)ft_strlen(s1) + 1))))
		return (0);
	while (*(s1 + i))
	{
		*(str + i) = *(s1 + i);
		i++;
	}
	*(str + i) = 0;
	return (str);
}
