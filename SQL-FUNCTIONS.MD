overview of the most important **PostgreSQL functions**

These are the built-in functions most commonly used for strings, numbers, dates/times, type conversions, and formatting.

### 1. String Functions
Official main page: https://www.postgresql.org/docs/current/functions-string.html

**Most commonly used:**

| Function                                         | Description                          | Example                                | Result         |
|--------------------------------------------------|--------------------------------------|----------------------------------------|----------------|
| `length(str)` / `char_length(str)`               | Length in characters                 | `length('hello')`                      | 5              |
| `substring(str FROM start FOR len)`              | Substring extraction                 | `substring('PostgreSQL' FROM 6 FOR 3)` | 'gre'          |
| `trim([LEADING, TRAILING, BOTH] chars FROM str)` | Trim characters                      | `trim(both 'x' from 'xxHelloxx')`      | 'Hello'        |
| `upper(str)` / `lower(str)`                      | Case conversion                      | `upper('PostgreSQL')`                  | 'POSTGRESQL'   |
| `concat(str1, str2, ...)`                        | Concatenate strings (ignores NULLs)  | `concat('a', NULL, 'b')`               | 'ab'           |
| `concat_ws(sep, str1, ...)`                      | Concatenate with separator           | `concat_ws('-', '2025', '12', '31')`   | '2025-12-31'   |
| `replace(str, from, to)`                         | Replace all occurrences              | `replace('hello', 'l', 'x')`           | 'hexxo'        |
| `format(formatstr, arg1, ...)`                   | sprintf-like formatting              | `format('Hello %s!', 'world')`         | 'Hello world!' |

Also: `overlay`, `translate`, `md5`, `sha256`, `encode`, `decode`, `convert_from`, `convert_to`, etc.

### 2. Numeric / Mathematical Functions
Official main page: https://www.postgresql.org/docs/current/functions-math.html

**Most commonly used:**

| Function       | Description                          | Example                     | Result    |
|----------------|--------------------------------------|-----------------------------|-----------|
| `abs(n)`       | Absolute value                       | `abs(-17.4)`                | 17.4      |
| `round(n [, decimals])` | Round to nearest integer or decimals | `round(17.567, 2)`          | 17.57     |
| `trunc(n [, decimals])` | Truncate toward zero                 | `trunc(17.567, 2)`          | 17.56     |
| `ceil(n)` / `ceiling(n)` | Smallest integer ≥ n                 | `ceil(17.1)`                | 18        |
| `floor(n)`     | Largest integer ≤ n                  | `floor(17.9)`               | 17        |
| `random()`     | Random value [0,1)                   | `random()`                  | e.g. 0.42 |
| `setseed(n)`   | Set random seed (-1..1)              | `setseed(0.5)`              | —         |
| `mod(a, b)`    | Remainder (a % b)                    | `mod(17, 5)`                | 2         |
| `power(a, b)` / `a ^ b` | a raised to power b                  | `power(2, 10)`              | 1024      |
| `sqrt(n)`      | Square root                          | `sqrt(16)`                  | 4         |
| `exp(n)`       | e^n                                  | `exp(1)`                    | ~2.718    |
| `ln(n)` / `log(n)` | Natural logarithm                    | `ln(2.718)`                 | ~1        |
| `log10(n)`     | Base-10 logarithm                    | `log10(100)`                | 2         |
| `pi()`         | π constant                           | `pi()`                      | 3.141...  |
| `width_bucket(n, low, high, buckets)` | Histogram bucket                     | `width_bucket(17, 0, 100, 10)` | 2      |

Also trigonometric: `sin`, `cos`, `tan`, `asin`, `acos`, `atan`, `degrees`, `radians`, etc.

### 3. Date / Time / Interval Functions
Official main page: https://www.postgresql.org/docs/current/functions-datetime.html

**Most commonly used:**

| Function                     | Description                                      | Example                                          | Result                     |
|------------------------------|--------------------------------------------------|--------------------------------------------------|----------------------------|
| `now()` / `current_timestamp` | Current timestamp with time zone                 | `now()`                                          | 2026-02-27 14:46:00+00     |
| `current_date`               | Current date                                     | `current_date`                                   | 2026-02-27                 |
| `current_time`               | Current time                                     | `current_time`                                   | 14:46:00                   |
| `age(ts)` / `age(ts1, ts2)`  | Interval between now/ts1 and ts2                 | `age(timestamp '2025-01-01')`                    | 1 mon 26 days              |
| `extract(field FROM val)` / `date_part('field', val)` | Extract component                                | `extract(month FROM now())`                      | 2                          |
| `date_trunc('field', ts)`    | Truncate to start of field                       | `date_trunc('month', now())`                     | 2026-02-01 00:00:00        |
| `date_bin('interval', ts, origin)` | Bin into fixed intervals                         | `date_bin('15 min', now(), '2000-01-01')`        | —                          |
| `justify_days(interval)` / `justify_hours(...)` / `justify_interval(...)` | Normalize interval                               | `justify_days('45 days')`                        | 1 mon 15 days              |
| `make_date(year, month, day)` | Construct date                                   | `make_date(2026, 2, 27)`                         | 2026-02-27                 |
| `make_timestamp(...)`        | Construct timestamp                              | `make_timestamp(2026,2,27,14,46,0)`              | 2026-02-27 14:46:00        |

Common fields for `extract`/`date_part`: `year`, `month`, `day`, `hour`, `minute`, `second`, `epoch`, `dow` (day of week), `doy`, `week`, `quarter`, `isoyear`, etc.

### 4. Type Conversion & Formatting Functions
Official main page: https://www.postgresql.org/docs/current/functions-formatting.html

| Function              | Description                                      | Example                                              | Result              |
|-----------------------|--------------------------------------------------|------------------------------------------------------|---------------------|
| `CAST(value AS type)` | SQL-standard cast                                | `CAST('123' AS integer)`                             | 123                 |
| `value::type`         | PostgreSQL cast operator (very common)           | `'2026-02-27'::date`                                 | 2026-02-27          |
| `to_char(value, template)` | Format number/date/time/interval as string       | `to_char(now(), 'YYYY-MM-DD HH24:MI:SS')`            | '2026-02-27 14:46:00' |
| `to_date(text, template)` | Parse string to date                             | `to_date('27-02-2026', 'DD-MM-YYYY')`                | 2026-02-27          |
| `to_timestamp(text, template)` | Parse string to timestamp                        | `to_timestamp('2026-02-27 14:46', 'YYYY-MM-DD HH24:MI')` | 2026-02-27 14:46:00 |
| `to_number(text, template)` | Parse string to number                           | `to_number('12,345.67', '99,999D99')`                | 12345.67            |

**to_char** templates examples:
- Dates: `YYYY-MM-DD`, `Day, DD Mon YYYY`, `HH24:MI:SS`
- Numbers: `999,999.99`, `FM999999`, `L999.99` (with currency), `RN` (Roman numerals)

For a complete list (including rarer functions), always check the official documentation:
- String → https://www.postgresql.org/docs/current/functions-string.html
- Math → https://www.postgresql.org/docs/current/functions-math.html
- Date/Time → https://www.postgresql.org/docs/current/functions-datetime.html
- Formatting → https://www.postgresql.org/docs/current/functions-formatting.html

Let me know if you'd like deeper examples for any specific function!