<?php
declare(strict_types=1);

namespace BlackCat\Database\Packages\UserConsents\Dto;

/**
 * Jednoduché, neměnné DTO s veřejnými readonly vlastnostmi.
 * - Bez logiky; pouze nosič dat.
 * - Silné typy drží kontrakt napříč vrstvami.
 */
final class UserConsentDto {
    public function __construct(
        public readonly ?int $id,
        public readonly int $userId,
        public readonly string $consentType,
        public readonly string $version,
        public readonly bool $granted,
        public readonly \DateTimeImmutable $grantedAt,
        public readonly ?string $source,
        public readonly array|null $meta
    ) {}

    /** Vhodné pro serializaci/logování (bez velkých blobů). */
    public function toArray(): array {
        return get_object_vars($this);
    }
}
