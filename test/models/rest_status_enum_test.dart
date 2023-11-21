import 'package:iw_rest_client/src/models/rest_status_enum.dart';
import 'package:test/test.dart';

void main() {
  group('RestStatus', () {
    final int mockContinue = 100;
    final int mockSwitchingProtocols = 101;
    final int mockProcessing = 102;
    final int mockEarlyHints = 103;
    final int mockOk = 200;
    final int mockCreated = 201;
    final int mockAccepted = 202;
    final int mockNonAuthoritativeInformation = 203;
    final int mockNoContent = 204;
    final int mockResetContent = 205;
    final int mockPartialContent = 206;
    final int mockMultiStatus = 207;
    final int mockAlreadyReported = 208;
    final int mockImUsed = 226;
    final int mockMultipleChoices = 300;
    final int mockMovedPermanently = 301;
    final int mockFound = 302;
    final int mockSeeOther = 303;
    final int mockNotModified = 304;
    final int mockUseProxy = 305;
    final int mockUnused = 306;
    final int mockTemporaryRedirect = 307;
    final int mockPermanentRedirect = 308;
    final int mockBadRequest = 400;
    final int mockUnauthorized = 401;
    final int mockPaymentRequired = 402;
    final int mockForbidden = 403;
    final int mockNotFound = 404;
    final int mockMethodNotAllowed = 405;
    final int mockNotAcceptable = 406;
    final int mockProxyAuthenticationRequired = 407;
    final int mockRequestTimeout = 408;
    final int mockConflict = 409;
    final int mockGone = 410;
    final int mockLengthRequired = 411;
    final int mockPreconditionFailed = 412;
    final int mockRequestEntityTooLarge = 413;
    final int mockRequestUriTooLong = 414;
    final int mockUnsupportedMediaType = 415;
    final int mockRequestedRangeNotSatisfiable = 416;
    final int mockExpectationFailed = 417;
    final int mockImATeapot = 418;
    final int mockMisdirectedRequest = 421;
    final int mockUnprocessableEntity = 422;
    final int mockLocked = 423;
    final int mockFailedDependency = 424;
    final int mockTooEarly = 425;
    final int mockUpgradeRequired = 426;
    final int mockPreconditionRequired = 428;
    final int mockTooManyRequests = 429;
    final int mockRequestHeaderFieldsTooLarge = 431;
    final int mockConnectionClosedWithoutResponse = 444;
    final int mockUnavailableForLegalReasons = 451;
    final int mockClientClosedRequest = 499;
    final int mockInternalServerError = 500;
    final int mockNotImplemented = 501;
    final int mockBadGateway = 502;
    final int mockServiceUnavailable = 503;
    final int mockGatewayTimeout = 504;
    final int mockHttpVersionNotSupported = 505;
    final int mockVariantAlsoNegotiates = 506;
    final int mockInsufficientStorage = 507;
    final int mockLoopDetected = 508;
    final int mockNotExtended = 510;
    final int mockNetworkAuthenticationRequired = 511;
    final int mockNetworkConnectTimeoutError = 599;

    group('Value', () {
      test('Should return 100 when RestStatus is continue_.', () {
        // Act
        final RestStatus status = RestStatus.continue_;

        // Asserts
        expect(status.value, equals(mockContinue));
      });

      test('Should return 101 when RestStatus is switchingProtocols.', () {
        // Act
        final RestStatus status = RestStatus.switchingProtocols;

        // Asserts
        expect(status.value, equals(mockSwitchingProtocols));
      });

      test('Should return 102 when RestStatus is processing.', () {
        // Act
        final RestStatus status = RestStatus.processing;

        // Asserts
        expect(status.value, equals(mockProcessing));
      });

      test('Should return 103 when RestStatus is earlyHints.', () {
        // Act
        final RestStatus status = RestStatus.earlyHints;

        // Asserts
        expect(status.value, equals(mockEarlyHints));
      });

      test('Should return 200 when RestStatus is ok.', () {
        // Act
        final RestStatus status = RestStatus.ok;

        // Asserts
        expect(status.value, equals(mockOk));
      });

      test('Should return 201 when RestStatus is created.', () {
        // Act
        final RestStatus status = RestStatus.created;

        // Asserts
        expect(status.value, equals(mockCreated));
      });

      test('Should return 202 when RestStatus is accepted.', () {
        // Act
        final RestStatus status = RestStatus.accepted;

        // Asserts
        expect(status.value, equals(mockAccepted));
      });

      test(
        'Should return 203 when RestStatus is nonAuthoritativeInformation.',
        () {
          // Act
          final RestStatus status = RestStatus.nonAuthoritativeInformation;

          // Asserts
          expect(status.value, equals(mockNonAuthoritativeInformation));
        },
      );

      test('Should return 204 when RestStatus is noContent.', () {
        // Act
        final RestStatus status = RestStatus.noContent;

        // Asserts
        expect(status.value, equals(mockNoContent));
      });

      test('Should return 205 when RestStatus is resetContent.', () {
        // Act
        final RestStatus status = RestStatus.resetContent;

        // Asserts
        expect(status.value, equals(mockResetContent));
      });

      test('Should return 206 when RestStatus is partialContent.', () {
        // Act
        final RestStatus status = RestStatus.partialContent;

        // Asserts
        expect(status.value, equals(mockPartialContent));
      });

      test('Should return 207 when RestStatus is multiStatus.', () {
        // Act
        final RestStatus status = RestStatus.multiStatus;

        // Asserts
        expect(status.value, equals(mockMultiStatus));
      });

      test('Should return 208 when RestStatus is alreadyReported.', () {
        // Act
        final RestStatus status = RestStatus.alreadyReported;

        // Asserts
        expect(status.value, equals(mockAlreadyReported));
      });

      test('Should return 226 when RestStatus is imUsed.', () {
        // Act
        final RestStatus status = RestStatus.imUsed;

        // Asserts
        expect(status.value, equals(mockImUsed));
      });

      test('Should return 300 when RestStatus is multipleChoices.', () {
        // Act
        final RestStatus status = RestStatus.multipleChoices;

        // Asserts
        expect(status.value, equals(mockMultipleChoices));
      });

      test('Should return 301 when RestStatus is movedPermanently.', () {
        // Act
        final RestStatus status = RestStatus.movedPermanently;

        // Asserts
        expect(status.value, equals(mockMovedPermanently));
      });

      test('Should return 302 when RestStatus is found.', () {
        // Act
        final RestStatus status = RestStatus.found;

        // Asserts
        expect(status.value, equals(mockFound));
      });

      test('Should return 303 when RestStatus is seeOther.', () {
        // Act
        final RestStatus status = RestStatus.seeOther;

        // Asserts
        expect(status.value, equals(mockSeeOther));
      });

      test('Should return 304 when RestStatus is notModified.', () {
        // Act
        final RestStatus status = RestStatus.notModified;

        // Asserts
        expect(status.value, equals(mockNotModified));
      });

      test('Should return 305 when RestStatus is useProxy.', () {
        // Act
        final RestStatus status = RestStatus.useProxy;

        // Asserts
        expect(status.value, equals(mockUseProxy));
      });

      test('Should return 306 when RestStatus is unused.', () {
        // Act
        final RestStatus status = RestStatus.unused;

        // Asserts
        expect(status.value, equals(mockUnused));
      });

      test('Should return 307 when RestStatus is temporaryRedirect.', () {
        // Act
        final RestStatus status = RestStatus.temporaryRedirect;

        // Asserts
        expect(status.value, equals(mockTemporaryRedirect));
      });

      test('Should return 308 when RestStatus is permanentRedirect.', () {
        // Act
        final RestStatus status = RestStatus.permanentRedirect;

        // Asserts
        expect(status.value, equals(mockPermanentRedirect));
      });

      test('Should return 400 when RestStatus is badRequest.', () {
        // Act
        final RestStatus status = RestStatus.badRequest;

        // Asserts
        expect(status.value, equals(mockBadRequest));
      });

      test('Should return 401 when RestStatus is unauthorized.', () {
        // Act
        final RestStatus status = RestStatus.unauthorized;

        // Asserts
        expect(status.value, equals(mockUnauthorized));
      });

      test('Should return 402 when RestStatus is paymentRequired.', () {
        // Act
        final RestStatus status = RestStatus.paymentRequired;

        // Asserts
        expect(status.value, equals(mockPaymentRequired));
      });

      test('Should return 403 when RestStatus is forbidden.', () {
        // Act
        final RestStatus status = RestStatus.forbidden;

        // Asserts
        expect(status.value, equals(mockForbidden));
      });

      test('Should return 404 when RestStatus is notFound.', () {
        // Act
        final RestStatus status = RestStatus.notFound;

        // Asserts
        expect(status.value, equals(mockNotFound));
      });

      test('Should return 405 when RestStatus is methodNotAllowed.', () {
        // Act
        final RestStatus status = RestStatus.methodNotAllowed;

        // Asserts
        expect(status.value, equals(mockMethodNotAllowed));
      });

      test('Should return 406 when RestStatus is notAcceptable.', () {
        // Act
        final RestStatus status = RestStatus.notAcceptable;

        // Asserts
        expect(status.value, equals(mockNotAcceptable));
      });

      test(
        'Should return 407 when RestStatus is proxyAuthenticationRequired.',
        () {
          // Act
          final RestStatus status = RestStatus.proxyAuthenticationRequired;

          // Asserts
          expect(status.value, equals(mockProxyAuthenticationRequired));
        },
      );

      test('Should return 408 when RestStatus is requestTimeout.', () {
        // Act
        final RestStatus status = RestStatus.requestTimeout;

        // Asserts
        expect(status.value, equals(mockRequestTimeout));
      });

      test('Should return 409 when RestStatus is conflict.', () {
        // Act
        final RestStatus status = RestStatus.conflict;

        // Asserts
        expect(status.value, equals(mockConflict));
      });

      test('Should return 410 when RestStatus is gone.', () {
        // Act
        final RestStatus status = RestStatus.gone;

        // Asserts
        expect(status.value, equals(mockGone));
      });

      test('Should return 411 when RestStatus is lengthRequired.', () {
        // Act
        final RestStatus status = RestStatus.lengthRequired;

        // Asserts
        expect(status.value, equals(mockLengthRequired));
      });

      test('Should return 412 when RestStatus is preconditionFailed.', () {
        // Act
        final RestStatus status = RestStatus.preconditionFailed;

        // Asserts
        expect(status.value, equals(mockPreconditionFailed));
      });

      test('Should return 413 when RestStatus is requestEntityTooLarge.', () {
        // Act
        final RestStatus status = RestStatus.requestEntityTooLarge;

        // Asserts
        expect(status.value, equals(mockRequestEntityTooLarge));
      });

      test('Should return 414 when RestStatus is requestUriTooLong.', () {
        // Act
        final RestStatus status = RestStatus.requestUriTooLong;

        // Asserts
        expect(status.value, equals(mockRequestUriTooLong));
      });

      test('Should return 415 when RestStatus is unsupportedMediaType.', () {
        // Act
        final RestStatus status = RestStatus.unsupportedMediaType;

        // Asserts
        expect(status.value, equals(mockUnsupportedMediaType));
      });

      test(
        'Should return 416 when RestStatus is requestedRangeNotSatisfiable.',
        () {
          // Act
          final RestStatus status = RestStatus.requestedRangeNotSatisfiable;

          // Asserts
          expect(status.value, equals(mockRequestedRangeNotSatisfiable));
        },
      );

      test('Should return 417 when RestStatus is expectationFailed.', () {
        // Act
        final RestStatus status = RestStatus.expectationFailed;

        // Asserts
        expect(status.value, equals(mockExpectationFailed));
      });

      test('Should return 418 when RestStatus is imATeapot.', () {
        // Act
        final RestStatus status = RestStatus.imATeapot;

        // Asserts
        expect(status.value, equals(mockImATeapot));
      });

      test('Should return 421 when RestStatus is misdirectedRequest.', () {
        // Act
        final RestStatus status = RestStatus.misdirectedRequest;

        // Asserts
        expect(status.value, equals(mockMisdirectedRequest));
      });

      test('Should return 422 when RestStatus is unprocessableEntity.', () {
        // Act
        final RestStatus status = RestStatus.unprocessableEntity;

        // Asserts
        expect(status.value, equals(mockUnprocessableEntity));
      });

      test('Should return 423 when RestStatus is locked.', () {
        // Act
        final RestStatus status = RestStatus.locked;

        // Asserts
        expect(status.value, equals(mockLocked));
      });

      test('Should return 424 when RestStatus is failedDependency.', () {
        // Act
        final RestStatus status = RestStatus.failedDependency;

        // Asserts
        expect(status.value, equals(mockFailedDependency));
      });

      test('Should return 425 when RestStatus is tooEarly.', () {
        // Act
        final RestStatus status = RestStatus.tooEarly;

        // Asserts
        expect(status.value, equals(mockTooEarly));
      });

      test('Should return 426 when RestStatus is upgradeRequired.', () {
        // Act
        final RestStatus status = RestStatus.upgradeRequired;

        // Asserts
        expect(status.value, equals(mockUpgradeRequired));
      });

      test('Should return 428 when RestStatus is preconditionRequired.', () {
        // Act
        final RestStatus status = RestStatus.preconditionRequired;

        // Asserts
        expect(status.value, equals(mockPreconditionRequired));
      });

      test('Should return 429 when RestStatus is tooManyRequests.', () {
        // Act
        final RestStatus status = RestStatus.tooManyRequests;

        // Asserts
        expect(status.value, equals(mockTooManyRequests));
      });

      test(
        'Should return 431 when RestStatus is requestHeaderFieldsTooLarge.',
        () {
          // Act
          final RestStatus status = RestStatus.requestHeaderFieldsTooLarge;

          // Asserts
          expect(status.value, equals(mockRequestHeaderFieldsTooLarge));
        },
      );

      test(
        'Should return 444 when RestStatus is connectionClosedWithoutResponse.',
        () {
          // Act
          final RestStatus status = RestStatus.connectionClosedWithoutResponse;

          // Asserts
          expect(status.value, equals(mockConnectionClosedWithoutResponse));
        },
      );

      test(
        'Should return 451 when RestStatus is unavailableForLegalReasons.',
        () {
          // Act
          final RestStatus status = RestStatus.unavailableForLegalReasons;

          // Asserts
          expect(status.value, equals(mockUnavailableForLegalReasons));
        },
      );

      test('Should return 499 when RestStatus is clientClosedRequest.', () {
        // Act
        final RestStatus status = RestStatus.clientClosedRequest;

        // Asserts
        expect(status.value, equals(mockClientClosedRequest));
      });

      test('Should return 500 when RestStatus is internalServerError.', () {
        // Act
        final RestStatus status = RestStatus.internalServerError;

        // Asserts
        expect(status.value, equals(mockInternalServerError));
      });

      test('Should return 501 when RestStatus is notImplemented.', () {
        // Act
        final RestStatus status = RestStatus.notImplemented;

        // Asserts
        expect(status.value, equals(mockNotImplemented));
      });

      test('Should return 502 when RestStatus is badGateway.', () {
        // Act
        final RestStatus status = RestStatus.badGateway;

        // Asserts
        expect(status.value, equals(mockBadGateway));
      });

      test('Should return 503 when RestStatus is serviceUnavailable.', () {
        // Act
        final RestStatus status = RestStatus.serviceUnavailable;

        // Asserts
        expect(status.value, equals(mockServiceUnavailable));
      });

      test('Should return 504 when RestStatus is gatewayTimeout.', () {
        // Act
        final RestStatus status = RestStatus.gatewayTimeout;

        // Asserts
        expect(status.value, equals(mockGatewayTimeout));
      });

      test('Should return 505 when RestStatus is httpVersionNotSupported.', () {
        // Act
        final RestStatus status = RestStatus.httpVersionNotSupported;

        // Asserts
        expect(status.value, equals(mockHttpVersionNotSupported));
      });

      test('Should return 506 when RestStatus is variantAlsoNegotiates.', () {
        // Act
        final RestStatus status = RestStatus.variantAlsoNegotiates;

        // Asserts
        expect(status.value, equals(mockVariantAlsoNegotiates));
      });

      test('Should return 507 when RestStatus is insufficientStorage.', () {
        // Act
        final RestStatus status = RestStatus.insufficientStorage;

        // Asserts
        expect(status.value, equals(mockInsufficientStorage));
      });

      test('Should return 508 when RestStatus is loopDetected.', () {
        // Act
        final RestStatus status = RestStatus.loopDetected;

        // Asserts
        expect(status.value, equals(mockLoopDetected));
      });

      test('Should return 510 when RestStatus is notExtended.', () {
        // Act
        final RestStatus status = RestStatus.notExtended;

        // Asserts
        expect(status.value, equals(mockNotExtended));
      });

      test(
        'Should return 511 when RestStatus is networkAuthenticationRequired.',
        () {
          // Act
          final RestStatus status = RestStatus.networkAuthenticationRequired;

          // Asserts
          expect(status.value, equals(mockNetworkAuthenticationRequired));
        },
      );

      test(
        'Should return 599 when RestStatus is networkConnectTimeoutError.',
        () {
          // Act
          final RestStatus status = RestStatus.networkConnectTimeoutError;

          // Asserts
          expect(status.value, equals(mockNetworkConnectTimeoutError));
        },
      );
    });

    group('fromValue', () {
      test('Should return null when value is not passed.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue();

        // Asserts
        expect(status, isNull);
      });

      test('Should return null when value is not valid.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(-25);

        // Asserts
        expect(status, isNull);
      });

      test('Should return continue_ RestStatus when value is 100.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockContinue);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.continue_));
      });

      test(
        'Should return switchingProtocols RestStatus when value is 101.',
        () {
          // Act
          final RestStatus? status =
              RestStatus.fromValue(mockSwitchingProtocols);

          // Asserts
          expect(status, isNotNull);
          expect(status, equals(RestStatus.switchingProtocols));
        },
      );

      test('Should return processing RestStatus when value is 102.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockProcessing);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.processing));
      });

      test('Should return earlyHints RestStatus when value is 103.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockEarlyHints);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.earlyHints));
      });

      test('Should return ok RestStatus when value is 200.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockOk);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.ok));
      });

      test('Should return created RestStatus when value is 201.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockCreated);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.created));
      });

      test('Should return accepted RestStatus when value is 202.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockAccepted);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.accepted));
      });

      test(
        'Should return nonAuthoritativeInformation RestStatus when value is 203.',
        () {
          // Act
          final RestStatus? status =
              RestStatus.fromValue(mockNonAuthoritativeInformation);

          // Asserts
          expect(status, isNotNull);
          expect(status, equals(RestStatus.nonAuthoritativeInformation));
        },
      );

      test('Should return noContent RestStatus when value is 204.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockNoContent);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.noContent));
      });

      test('Should return resetContent RestStatus when value is 205.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockResetContent);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.resetContent));
      });

      test('Should return partialContent RestStatus when value is 206.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockPartialContent);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.partialContent));
      });

      test('Should return multiStatus RestStatus when value is 207.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockMultiStatus);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.multiStatus));
      });

      test('Should return alreadyReported RestStatus when value is 208.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockAlreadyReported);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.alreadyReported));
      });

      test('Should return imUsed RestStatus when value is 226.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockImUsed);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.imUsed));
      });

      test('Should return multipleChoices RestStatus when value is 300.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockMultipleChoices);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.multipleChoices));
      });

      test('Should return movedPermanently RestStatus when value is 301.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockMovedPermanently);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.movedPermanently));
      });

      test('Should return found RestStatus when value is 302.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockFound);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.found));
      });

      test('Should return seeOther RestStatus when value is 303.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockSeeOther);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.seeOther));
      });

      test('Should return notModified RestStatus when value is 304.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockNotModified);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.notModified));
      });

      test('Should return useProxy RestStatus when value is 305.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockUseProxy);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.useProxy));
      });

      test('Should return unused RestStatus when value is 306.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockUnused);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.unused));
      });

      test('Should return temporaryRedirect RestStatus when value is 307.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockTemporaryRedirect);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.temporaryRedirect));
      });

      test('Should return permanentRedirect RestStatus when value is 308.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockPermanentRedirect);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.permanentRedirect));
      });

      test('Should return badRequest RestStatus when value is 400.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockBadRequest);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.badRequest));
      });

      test('Should return unauthorized RestStatus when value is 401.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockUnauthorized);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.unauthorized));
      });

      test('Should return paymentRequired RestStatus when value is 402.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockPaymentRequired);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.paymentRequired));
      });

      test('Should return forbidden RestStatus when value is 403.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockForbidden);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.forbidden));
      });

      test('Should return notFound RestStatus when value is 404.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockNotFound);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.notFound));
      });

      test('Should return methodNotAllowed RestStatus when value is 405.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockMethodNotAllowed);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.methodNotAllowed));
      });

      test('Should return notAcceptable RestStatus when value is 406.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockNotAcceptable);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.notAcceptable));
      });

      test(
        'Should return proxyAuthenticationRequired RestStatus when value is 407.',
        () {
          // Act
          final RestStatus? status =
              RestStatus.fromValue(mockProxyAuthenticationRequired);

          // Asserts
          expect(status, isNotNull);
          expect(status, equals(RestStatus.proxyAuthenticationRequired));
        },
      );

      test('Should return requestTimeout RestStatus when value is 408.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockRequestTimeout);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.requestTimeout));
      });

      test('Should return conflict RestStatus when value is 409.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockConflict);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.conflict));
      });

      test('Should return gone RestStatus when value is 410.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockGone);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.gone));
      });

      test('Should return lengthRequired RestStatus when value is 411.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockLengthRequired);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.lengthRequired));
      });

      test(
        'Should return preconditionFailed RestStatus when value is 412.',
        () {
          // Act
          final RestStatus? status =
              RestStatus.fromValue(mockPreconditionFailed);

          // Asserts
          expect(status, isNotNull);
          expect(status, equals(RestStatus.preconditionFailed));
        },
      );

      test(
        'Should return requestEntityTooLarge RestStatus when value is 413.',
        () {
          // Act
          final RestStatus? status =
              RestStatus.fromValue(mockRequestEntityTooLarge);

          // Asserts
          expect(status, isNotNull);
          expect(status, equals(RestStatus.requestEntityTooLarge));
        },
      );

      test('Should return requestUriTooLong RestStatus when value is 414.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockRequestUriTooLong);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.requestUriTooLong));
      });

      test(
        'Should return unsupportedMediaType RestStatus when value is 415.',
        () {
          // Act
          final RestStatus? status =
              RestStatus.fromValue(mockUnsupportedMediaType);

          // Asserts
          expect(status, isNotNull);
          expect(status, equals(RestStatus.unsupportedMediaType));
        },
      );

      test(
        'Should return requestedRangeNotSatisfiable RestStatus when value is 416.',
        () {
          // Act
          final RestStatus? status =
              RestStatus.fromValue(mockRequestedRangeNotSatisfiable);

          // Asserts
          expect(status, isNotNull);
          expect(status, equals(RestStatus.requestedRangeNotSatisfiable));
        },
      );

      test('Should return expectationFailed RestStatus when value is 417.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockExpectationFailed);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.expectationFailed));
      });

      test('Should return imATeapot RestStatus when value is 418.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockImATeapot);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.imATeapot));
      });

      test(
        'Should return misdirectedRequest RestStatus when value is 421.',
        () {
          // Act
          final RestStatus? status =
              RestStatus.fromValue(mockMisdirectedRequest);

          // Asserts
          expect(status, isNotNull);
          expect(status, equals(RestStatus.misdirectedRequest));
        },
      );

      test(
        'Should return unprocessableEntity RestStatus when value is 422.',
        () {
          // Act
          final RestStatus? status =
              RestStatus.fromValue(mockUnprocessableEntity);

          // Asserts
          expect(status, isNotNull);
          expect(status, equals(RestStatus.unprocessableEntity));
        },
      );

      test('Should return locked RestStatus when value is 423.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockLocked);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.locked));
      });

      test('Should return failedDependency RestStatus when value is 424.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockFailedDependency);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.failedDependency));
      });

      test('Should return tooEarly RestStatus when value is 425.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockTooEarly);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.tooEarly));
      });

      test('Should return upgradeRequired RestStatus when value is 426.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockUpgradeRequired);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.upgradeRequired));
      });

      test(
        'Should return preconditionRequired RestStatus when value is 428.',
        () {
          // Act
          final RestStatus? status =
              RestStatus.fromValue(mockPreconditionRequired);

          // Asserts
          expect(status, isNotNull);
          expect(status, equals(RestStatus.preconditionRequired));
        },
      );

      test('Should return tooManyRequests RestStatus when value is 429.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockTooManyRequests);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.tooManyRequests));
      });

      test(
        'Should return requestHeaderFieldsTooLarge RestStatus when value is 431.',
        () {
          // Act
          final RestStatus? status =
              RestStatus.fromValue(mockRequestHeaderFieldsTooLarge);

          // Asserts
          expect(status, isNotNull);
          expect(status, equals(RestStatus.requestHeaderFieldsTooLarge));
        },
      );

      test(
        'Should return connectionClosedWithoutResponse RestStatus when value is 444.',
        () {
          // Act
          final RestStatus? status =
              RestStatus.fromValue(mockConnectionClosedWithoutResponse);

          // Asserts
          expect(status, isNotNull);
          expect(status, equals(RestStatus.connectionClosedWithoutResponse));
        },
      );

      test(
        'Should return unavailableForLegalReasons RestStatus when value is 451.',
        () {
          // Act
          final RestStatus? status =
              RestStatus.fromValue(mockUnavailableForLegalReasons);

          // Asserts
          expect(status, isNotNull);
          expect(status, equals(RestStatus.unavailableForLegalReasons));
        },
      );

      test(
        'Should return clientClosedRequest RestStatus when value is 499.',
        () {
          // Act
          final RestStatus? status =
              RestStatus.fromValue(mockClientClosedRequest);

          // Asserts
          expect(status, isNotNull);
          expect(status, equals(RestStatus.clientClosedRequest));
        },
      );

      test(
        'Should return internalServerError RestStatus when value is 500.',
        () {
          // Act
          final RestStatus? status =
              RestStatus.fromValue(mockInternalServerError);

          // Asserts
          expect(status, isNotNull);
          expect(status, equals(RestStatus.internalServerError));
        },
      );

      test('Should return notImplemented RestStatus when value is 501.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockNotImplemented);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.notImplemented));
      });

      test('Should return badGateway RestStatus when value is 502.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockBadGateway);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.badGateway));
      });

      test(
        'Should return serviceUnavailable RestStatus when value is 503.',
        () {
          // Act
          final RestStatus? status =
              RestStatus.fromValue(mockServiceUnavailable);

          // Asserts
          expect(status, isNotNull);
          expect(status, equals(RestStatus.serviceUnavailable));
        },
      );

      test('Should return gatewayTimeout RestStatus when value is 504.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockGatewayTimeout);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.gatewayTimeout));
      });

      test(
        'Should return httpVersionNotSupported RestStatus when value is 505.',
        () {
          // Act
          final RestStatus? status =
              RestStatus.fromValue(mockHttpVersionNotSupported);

          // Asserts
          expect(status, isNotNull);
          expect(status, equals(RestStatus.httpVersionNotSupported));
        },
      );

      test(
        'Should return variantAlsoNegotiates RestStatus when value is 506.',
        () {
          // Act
          final RestStatus? status =
              RestStatus.fromValue(mockVariantAlsoNegotiates);

          // Asserts
          expect(status, isNotNull);
          expect(status, equals(RestStatus.variantAlsoNegotiates));
        },
      );

      test(
        'Should return insufficientStorage RestStatus when value is 507.',
        () {
          // Act
          final RestStatus? status =
              RestStatus.fromValue(mockInsufficientStorage);

          // Asserts
          expect(status, isNotNull);
          expect(status, equals(RestStatus.insufficientStorage));
        },
      );

      test('Should return loopDetected RestStatus when value is 508.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockLoopDetected);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.loopDetected));
      });

      test('Should return notExtended RestStatus when value is 510.', () {
        // Act
        final RestStatus? status = RestStatus.fromValue(mockNotExtended);

        // Asserts
        expect(status, isNotNull);
        expect(status, equals(RestStatus.notExtended));
      });

      test(
        'Should return networkAuthenticationRequired RestStatus when value is 511.',
        () {
          // Act
          final RestStatus? status =
              RestStatus.fromValue(mockNetworkAuthenticationRequired);

          // Asserts
          expect(status, isNotNull);
          expect(status, equals(RestStatus.networkAuthenticationRequired));
        },
      );

      test(
        'Should return networkConnectTimeoutError RestStatus when value is 599.',
        () {
          // Act
          final RestStatus? status =
              RestStatus.fromValue(mockNetworkConnectTimeoutError);

          // Asserts
          expect(status, isNotNull);
          expect(status, equals(RestStatus.networkConnectTimeoutError));
        },
      );
    });
  });
}
