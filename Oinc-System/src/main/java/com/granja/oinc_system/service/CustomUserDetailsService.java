package com.granja.oinc_system.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.granja.oinc_system.repository.UsuarioRepository;

@Service
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private UsuarioRepository usuarioRepository;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		return usuarioRepository.findByNomUsu(username)
				.map(usuario -> User.builder().username(usuario.getNomUsu()).password(usuario.getSenUsu()).roles("USER") // Defina
																															// roles
																															// adequadamente
						.build())
				.orElseThrow(() -> new UsernameNotFoundException("Usuário não encontrado: " + username));
	}
}
