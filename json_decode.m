%JSON_DECODE parses a JSON string and returns a MATLAB object.
%   JSON objects are converted to structures and JSON arrays are
%   converted to cell arrays. NULL values are converted to empty logical.
%
%   Example:
%     search = 'http://ajax.googleapis.com/ajax/services/search/web?v=1.0&q=matlab';
%     results = json_decode(urlread(search));
%     disp(results.responseData.results{1}.titleNoFormatting);
%     disp(results.responseData.results{1}.visibleUrl);
%
%   Note:
%     This function implements a superset of JSON as specified in the original
%     RFC 4627 - it will also decode scalar types and NULL. RFC 4627 only
%     supports these values when they are nested inside an array or an object.
%     Although this superset is consistent with the expanded definition of
%     "JSON text" in the newer RFC 7159 (which aims to supersede RFC 4627),
%     this may cause interoperability issues with older JSON parsers that
%     adhere strictly to RFC 4627 when encoding a single scalar value.
%     See http://www.rfc-editor.org/rfc/rfc7159.txt for more information.

%  Created by Léa Strobino.
%  Copyright 2016. All rights reserved.
%  The JSON parser is based on jsmn (http://zserge.com/jsmn.html).
