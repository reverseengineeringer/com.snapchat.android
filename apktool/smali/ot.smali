.class public abstract Lot;
.super Landroid/os/AsyncTask;
.source "SourceFile"

# interfaces
.implements Lpc$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Laku;",
        ">;",
        "Lpc$a;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DURATION:Ljava/lang/String; = "duration"

.field protected static final ENDPOINT_REQUEST_EVENT:Ljava/lang/String; = "ENDPOINT_REQUEST"

.field public static final FIRST_BYTE_DURATION:Ljava/lang/String; = "firstByteDuration"

.field public static final FIRST_BYTE_SIZE:Ljava/lang/String; = "firstByteSize"

.field public static final HITCACHE:Ljava/lang/String; = "hitCache"

.field public static final HOST:Ljava/lang/String; = "host"

.field public static final MIGRATION_RESULT:Ljava/lang/String; = "migrationResult"

.field public static final PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final REACHABILITY:Ljava/lang/String; = "reachability"

.field public static final RECEIVED_BYTES:Ljava/lang/String; = "receivedBytes"

.field public static final RESULT_DATA:Ljava/lang/String; = "resultData"

.field public static final SC_LOCKED_ACCOUNT:I = 0x1a2

.field public static final SENT_BYTES:Ljava/lang/String; = "sentBytes"

.field public static final STATUS_CODE:Ljava/lang/String; = "statusCode"

.field private static final TAG:Ljava/lang/String; = "RequestTask"


# instance fields
.field protected m401Error:Z

.field protected m404Error:Z

.field protected mElapsedTime:J

.field public mFailureMessage:Ljava/lang/String;

.field protected mFirstByteDuration:J

.field protected mFirstByteSize:J

.field protected mGson:Lato;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mHitCache:Z

.field protected mHost:Ljava/lang/String;

.field protected mMigrationResult:Ljava/lang/String;

.field protected mProtocol:Ljava/lang/String;

.field protected mReachability:Ljava/lang/String;

.field protected mReceivedBytes:J

.field protected mResultJson:Ljava/lang/String;

.field protected mSentBytes:J

.field public mStartMillis:J

.field protected mStatusCode:I

.field public mUUID:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 76
    iput-boolean v0, p0, Lot;->m401Error:Z

    .line 77
    iput-boolean v0, p0, Lot;->m404Error:Z

    .line 98
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lot;)V

    .line 99
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Laku;
    .locals 7
    .annotation build Lcaq;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 112
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lot;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 114
    :cond_0
    invoke-static {}, Lajx;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    const-string v0, "RequestTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Do not send any network request for Snapkidz - base URL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lot;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    :goto_0
    return-object v1

    .line 120
    :cond_1
    invoke-virtual {p0}, Lot;->a()Ljava/lang/String;

    move-result-object v4

    .line 121
    invoke-virtual {p0}, Lot;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 125
    const-string v5, "features_map"

    invoke-static {}, Loz;->a()Loz;

    move-result-object v6

    invoke-virtual {v6, v4}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v5, "/bq/get_captcha"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 129
    invoke-static {v4, v0, p0}, Lpc;->a(Ljava/lang/String;Landroid/os/Bundle;Lpc$a;)Landroid/os/Bundle;

    move-result-object v0

    .line 133
    :goto_1
    const-string v5, "resultData"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 134
    invoke-virtual {p0, v0}, Lot;->a(Landroid/os/Bundle;)V

    .line 139
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 141
    :try_start_0
    iget-object v0, p0, Lot;->mGson:Lato;

    const-class v6, Laku;

    invoke-virtual {v0, v5, v6}, Lato;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laku;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1

    .line 151
    :goto_2
    iget v1, p0, Lot;->mStatusCode:I

    invoke-static {v1}, Latq;->a(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 152
    if-eqz v0, :cond_3

    .line 156
    const-string v1, "/loq/conversations"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "/loq/gae_server_list"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "/loq/ping"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_2
    move v1, v3

    .line 161
    :goto_3
    iget-boolean v2, v0, Laku;->logged:Z

    if-nez v2, :cond_3

    if-nez v1, :cond_3

    iget-object v1, v0, Laku;->updates_response:Lbjp;

    if-eqz v1, :cond_9

    iget-object v1, v0, Laku;->updates_response:Lbjp;

    invoke-virtual {v1}, Lbjp;->m()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 184
    :cond_3
    :goto_4
    iget v1, p0, Lot;->mStatusCode:I

    const/16 v2, 0x1f7

    if-ne v1, v2, :cond_4

    const-string v1, "/find_friends"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 188
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v2, "Server response 503 on /find_friends"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->d()V

    .line 191
    :cond_4
    iget v1, p0, Lot;->mStatusCode:I

    const/16 v2, 0x193

    if-ne v1, v2, :cond_5

    const-string v1, "/login"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 192
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v2, "Server response 403 on /login"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->d()V

    :cond_5
    move-object v1, v0

    .line 194
    goto/16 :goto_0

    .line 131
    :cond_6
    invoke-static {v4, v0, v1}, Lpc;->a(Ljava/lang/String;Landroid/os/Bundle;Lpc$a;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " in "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lot;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ": "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lot;->mFailureMessage:Ljava/lang/String;

    :cond_7
    move-object v0, v1

    goto/16 :goto_2

    :cond_8
    move v1, v2

    .line 156
    goto :goto_3

    .line 166
    :cond_9
    iget-object v1, v0, Laku;->message:Ljava/lang/String;

    iput-object v1, p0, Lot;->mFailureMessage:Ljava/lang/String;

    goto :goto_4

    .line 170
    :cond_a
    iget v1, p0, Lot;->mStatusCode:I

    const/16 v2, 0x191

    if-ne v1, v2, :cond_b

    .line 171
    iput-boolean v3, p0, Lot;->m401Error:Z

    goto :goto_4

    .line 172
    :cond_b
    iget v1, p0, Lot;->mStatusCode:I

    const/16 v2, 0x194

    if-ne v1, v2, :cond_c

    .line 173
    iput-boolean v3, p0, Lot;->m404Error:Z

    goto :goto_4

    .line 174
    :cond_c
    iget v1, p0, Lot;->mStatusCode:I

    const/16 v2, 0x198

    if-ne v1, v2, :cond_d

    .line 175
    invoke-static {}, Lbfr;->a()Lbfr;

    move-result-object v1

    invoke-virtual {v1}, Lbfr;->b()V

    .line 176
    const-string v1, "There was a problem connecting to the server"

    iput-object v1, p0, Lot;->mFailureMessage:Ljava/lang/String;

    goto/16 :goto_4

    .line 177
    :cond_d
    iget v1, p0, Lot;->mStatusCode:I

    const/16 v2, 0x1f4

    if-ne v1, v2, :cond_e

    .line 178
    const-string v1, "Internal server error"

    iput-object v1, p0, Lot;->mFailureMessage:Ljava/lang/String;

    goto/16 :goto_4

    .line 181
    :cond_e
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    .line 182
    if-eqz v1, :cond_f

    const v2, 0x7f0c01d0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lot;->mFailureMessage:Ljava/lang/String;

    goto/16 :goto_4

    .line 183
    :cond_f
    const-string v1, "There was a problem connecting to the server."

    iput-object v1, p0, Lot;->mFailureMessage:Ljava/lang/String;

    goto/16 :goto_4

    .line 143
    :catch_1
    move-exception v0

    goto :goto_5
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public a(Laku;)V
    .locals 6
    .annotation build Lccm;
    .end annotation

    .prologue
    .line 219
    const-string v0, "RequestTask"

    const-string v1, "%s completed in %d milliseconds."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lot;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lot;->mElapsedTime:J

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    invoke-virtual {p0}, Lot;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GetProfileInfoTask"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget v0, p0, Lot;->mStatusCode:I

    invoke-static {v0}, Latq;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lot;->mResultJson:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lot;->a(Ljava/lang/String;)V

    .line 237
    :goto_0
    invoke-virtual {p0, p1}, Lot;->c(Laku;)V

    .line 238
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lot;->mFailureMessage:Ljava/lang/String;

    iget v1, p0, Lot;->mStatusCode:I

    invoke-virtual {p0, v0, v1}, Lot;->a(Ljava/lang/String;I)V

    .line 225
    invoke-virtual {p0, p1}, Lot;->d(Laku;)V

    goto :goto_0

    .line 227
    :cond_1
    iget-boolean v0, p0, Lot;->m401Error:Z

    if-eqz v0, :cond_2

    .line 228
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;->AUTHENTICATION_ERROR:Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;)V

    invoke-static {}, Laol;->a()Laol;

    move-result-object v0

    invoke-virtual {v0}, Laol;->e()I

    goto :goto_0

    .line 229
    :cond_2
    iget-boolean v0, p0, Lot;->m404Error:Z

    if-eqz v0, :cond_3

    .line 230
    invoke-virtual {p0}, Lot;->f()V

    goto :goto_0

    .line 231
    :cond_3
    iget-object v0, p0, Lot;->mFailureMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 232
    invoke-virtual {p0, p1}, Lot;->b(Laku;)V

    goto :goto_0

    .line 234
    :cond_4
    iget-object v0, p0, Lot;->mFailureMessage:Ljava/lang/String;

    iget v1, p0, Lot;->mStatusCode:I

    invoke-virtual {p0, v0, v1}, Lot;->a(Ljava/lang/String;I)V

    .line 235
    invoke-virtual {p0, p1}, Lot;->d(Laku;)V

    goto :goto_0
.end method

.method protected final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 265
    const-string v0, "resultData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lot;->mResultJson:Ljava/lang/String;

    .line 266
    const-string v0, "statusCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lot;->mStatusCode:I

    .line 267
    const-string v0, "hitCache"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lot;->mHitCache:Z

    .line 268
    const-string v0, "firstByteDuration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lot;->mFirstByteDuration:J

    .line 269
    const-string v0, "duration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lot;->mElapsedTime:J

    .line 270
    const-string v0, "sentBytes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lot;->mSentBytes:J

    .line 271
    const-string v0, "firstByteSize"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lot;->mFirstByteSize:J

    .line 272
    const-string v0, "receivedBytes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lot;->mReceivedBytes:J

    .line 273
    const-string v0, "reachability"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lot;->mReachability:Ljava/lang/String;

    .line 274
    const-string v0, "protocol"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lot;->mProtocol:Ljava/lang/String;

    .line 275
    const-string v0, "host"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lot;->mHost:Ljava/lang/String;

    .line 276
    const-string v0, "migrationResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lot;->mMigrationResult:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public a(Lblu;Lbmd;)V
    .locals 0

    .prologue
    .line 279
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0
    .annotation build Lccm;
    .end annotation

    .prologue
    .line 282
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0
    .annotation build Lccm;
    .end annotation

    .prologue
    .line 288
    return-void
.end method

.method public abstract b()Landroid/os/Bundle;
.end method

.method public b(Laku;)V
    .locals 0
    .param p1    # Laku;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation build Lccm;
    .end annotation

    .prologue
    .line 285
    return-void
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method protected final c(Laku;)V
    .locals 4

    .prologue
    .line 241
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "ENDPOINT_REQUEST"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "endpoint"

    invoke-virtual {p0}, Lot;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "host"

    iget-object v2, p0, Lot;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "status_code"

    iget v2, p0, Lot;->mStatusCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "first_bytes_latency"

    iget-wide v2, p0, Lot;->mFirstByteDuration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "total_latency"

    iget-wide v2, p0, Lot;->mElapsedTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "first_bytes_size"

    iget-wide v2, p0, Lot;->mFirstByteSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "request_size_bytes"

    iget-wide v2, p0, Lot;->mSentBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "return_size_bytes"

    iget-wide v2, p0, Lot;->mReceivedBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "Hit_Cache"

    iget-boolean v2, p0, Lot;->mHitCache:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reachability"

    iget-object v2, p0, Lot;->mReachability:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "requestId"

    iget-object v2, p0, Lot;->mUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "protocol"

    iget-object v2, p0, Lot;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    .line 254
    if-eqz p1, :cond_0

    iget-object v1, p1, Laku;->server_info:Lbiw;

    if-eqz v1, :cond_0

    .line 255
    const-string v1, "server_latency"

    iget-object v2, p1, Laku;->server_info:Lbiw;

    invoke-virtual {v2}, Lbiw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 256
    const-string v1, "response_checksum"

    iget-object v2, p1, Laku;->server_info:Lbiw;

    invoke-virtual {v2}, Lbiw;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 257
    const-string v1, "response_compare_result"

    iget-object v2, p1, Laku;->server_info:Lbiw;

    invoke-virtual {v2}, Lbiw;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 258
    const-string v1, "response_compare_results_dict"

    iget-object v2, p1, Laku;->server_info:Lbiw;

    invoke-virtual {v2}, Lbiw;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 260
    :cond_0
    iget-object v1, p0, Lot;->mMigrationResult:Ljava/lang/String;

    invoke-static {v0, v1}, Luh;->a(Lcom/snapchat/android/analytics/framework/EasyMetric;Ljava/lang/String;)V

    .line 261
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 262
    return-void
.end method

.method public d(Laku;)V
    .locals 3
    .param p1    # Laku;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 291
    if-nez p1, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget v0, p1, Laku;->status:I

    const/16 v1, 0x1a2

    if-ne v0, v1, :cond_0

    .line 293
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbbm;

    iget-object v2, p1, Laku;->message:Ljava/lang/String;

    invoke-direct {v1, v2}, Lbbm;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lot;->a([Ljava/lang/String;)Laku;

    move-result-object v0

    return-object v0
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 326
    return-void
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lot;->mStatusCode:I

    return v0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    check-cast p1, Laku;

    invoke-virtual {p0, p1}, Lot;->a(Laku;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 5
    .annotation build Lccm;
    .end annotation

    .prologue
    .line 104
    const-string v0, "RequestTask"

    const-string v1, "Starting new %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lot;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lot;->mUUID:Ljava/util/UUID;

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lot;->mStartMillis:J

    .line 107
    return-void
.end method
