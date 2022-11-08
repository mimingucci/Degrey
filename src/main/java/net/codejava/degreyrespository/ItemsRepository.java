package net.codejava.degreyrespository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import net.codejava.degreymodal.items;
@Repository
@Transactional
public interface ItemsRepository extends JpaRepository<items, Integer>{
   
}
