/*
  Warnings:

  - Added the required column `complemento` to the `LocalColeta` table without a default value. This is not possible if the table is not empty.
  - Added the required column `nome` to the `LocalColeta` table without a default value. This is not possible if the table is not empty.
  - Added the required column `numero` to the `LocalColeta` table without a default value. This is not possible if the table is not empty.
  - Added the required column `rua` to the `LocalColeta` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `LocalColeta` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `localcoleta` ADD COLUMN `complemento` VARCHAR(191) NOT NULL,
    ADD COLUMN `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `nome` VARCHAR(191) NOT NULL,
    ADD COLUMN `numero` VARCHAR(191) NOT NULL,
    ADD COLUMN `rua` VARCHAR(191) NOT NULL,
    ADD COLUMN `updated_at` DATETIME(3) NOT NULL;

-- CreateTable
CREATE TABLE `TipoSanguineo` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `tipo` VARCHAR(191) NOT NULL,
    `fator` VARCHAR(191) NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pessoas` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(191) NOT NULL,
    `rua` VARCHAR(191) NOT NULL,
    `numero` VARCHAR(191) NOT NULL,
    `complemento` VARCHAR(191) NOT NULL,
    `rg` VARCHAR(191) NOT NULL,
    `cidade_id` INTEGER NOT NULL,
    `tipo_id` INTEGER NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `doacoes` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `pessoa_id` INTEGER NOT NULL,
    `local_id` INTEGER NOT NULL,
    `data` DATETIME(3) NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `pessoas` ADD CONSTRAINT `pessoas_cidade_id_fkey` FOREIGN KEY (`cidade_id`) REFERENCES `cidades`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `pessoas` ADD CONSTRAINT `pessoas_tipo_id_fkey` FOREIGN KEY (`tipo_id`) REFERENCES `TipoSanguineo`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `doacoes` ADD CONSTRAINT `doacoes_pessoa_id_fkey` FOREIGN KEY (`pessoa_id`) REFERENCES `pessoas`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `doacoes` ADD CONSTRAINT `doacoes_local_id_fkey` FOREIGN KEY (`local_id`) REFERENCES `LocalColeta`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
