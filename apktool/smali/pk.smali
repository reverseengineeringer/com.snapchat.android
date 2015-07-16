.class public abstract Lpk;
.super Landroid/os/AsyncTask;
.source "SourceFile"

# interfaces
.implements Lpt$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lalp;",
        ">;",
        "Lpt$a;"
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

.field protected mGson:Laum;
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
    iput-boolean v0, p0, Lpk;->m401Error:Z

    .line 77
    iput-boolean v0, p0, Lpk;->m404Error:Z

    .line 98
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lpk;)V

    .line 99
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lalp;
    .locals 6
    .annotation build Lcbr;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 112
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lpk;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 114
    :cond_0
    invoke-static {}, Lakr;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Do not send any network request for Snapkidz - base URL: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " path: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lpk;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :goto_0
    return-object v1

    .line 120
    :cond_1
    invoke-virtual {p0}, Lpk;->a()Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-virtual {p0}, Lpk;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 125
    const-string v4, "features_map"

    invoke-static {}, Lpq;->a()Lpq;

    move-result-object v5

    invoke-virtual {v5, v3}, Lpq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v4, "/bq/get_captcha"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 129
    invoke-static {v3, v0, p0}, Lpt;->a(Ljava/lang/String;Landroid/os/Bundle;Lpt$a;)Landroid/os/Bundle;

    move-result-object v0

    .line 133
    :goto_1
    const-string v4, "resultData"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 134
    invoke-virtual {p0, v0}, Lpk;->a(Landroid/os/Bundle;)V

    .line 139
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 141
    :try_start_0
    iget-object v0, p0, Lpk;->mGson:Laum;

    const-class v5, Lalp;

    invoke-virtual {v0, v4, v5}, Laum;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lalp;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1

    .line 151
    :goto_2
    iget v1, p0, Lpk;->mStatusCode:I

    invoke-static {v1}, Lauo;->a(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 152
    if-eqz v0, :cond_3

    .line 156
    const-string v1, "/loq/conversations"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "/loq/gae_server_list"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "/loq/ping"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_2
    move v1, v2

    .line 161
    :goto_3
    iget-boolean v2, v0, Lalp;->logged:Z

    if-nez v2, :cond_3

    if-nez v1, :cond_3

    iget-object v1, v0, Lalp;->updates_response:Lbkq;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lalp;->updates_response:Lbkq;

    invoke-virtual {v1}, Lbkq;->m()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 184
    :cond_3
    :goto_4
    iget v1, p0, Lpk;->mStatusCode:I

    const/16 v2, 0x1f7

    if-ne v1, v2, :cond_4

    const-string v1, "/find_friends"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 188
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v2, "Server response 503 on /find_friends"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->e()V

    .line 191
    :cond_4
    iget v1, p0, Lpk;->mStatusCode:I

    const/16 v2, 0x193

    if-ne v1, v2, :cond_5

    const-string v1, "/login"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 192
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v2, "Server response 403 on /login"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->e()V

    :cond_5
    move-object v1, v0

    .line 194
    goto/16 :goto_0

    .line 131
    :cond_6
    invoke-static {v3, v0, v1}, Lpt;->a(Ljava/lang/String;Landroid/os/Bundle;Lpt$a;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " in "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lpk;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpk;->mFailureMessage:Ljava/lang/String;

    :cond_7
    move-object v0, v1

    goto/16 :goto_2

    .line 156
    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    .line 166
    :cond_9
    iget-object v1, v0, Lalp;->message:Ljava/lang/String;

    iput-object v1, p0, Lpk;->mFailureMessage:Ljava/lang/String;

    goto :goto_4

    .line 170
    :cond_a
    iget v1, p0, Lpk;->mStatusCode:I

    const/16 v4, 0x191

    if-ne v1, v4, :cond_b

    .line 171
    iput-boolean v2, p0, Lpk;->m401Error:Z

    goto :goto_4

    .line 172
    :cond_b
    iget v1, p0, Lpk;->mStatusCode:I

    const/16 v4, 0x194

    if-ne v1, v4, :cond_c

    .line 173
    iput-boolean v2, p0, Lpk;->m404Error:Z

    goto :goto_4

    .line 174
    :cond_c
    iget v1, p0, Lpk;->mStatusCode:I

    const/16 v2, 0x198

    if-ne v1, v2, :cond_d

    .line 175
    invoke-static {}, Lbgr;->a()Lbgr;

    move-result-object v1

    invoke-virtual {v1}, Lbgr;->b()V

    .line 176
    const-string v1, "There was a problem connecting to the server"

    iput-object v1, p0, Lpk;->mFailureMessage:Ljava/lang/String;

    goto/16 :goto_4

    .line 177
    :cond_d
    iget v1, p0, Lpk;->mStatusCode:I

    const/16 v2, 0x1f4

    if-ne v1, v2, :cond_e

    .line 178
    const-string v1, "Internal server error"

    iput-object v1, p0, Lpk;->mFailureMessage:Ljava/lang/String;

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

    iput-object v1, p0, Lpk;->mFailureMessage:Ljava/lang/String;

    goto/16 :goto_4

    .line 183
    :cond_f
    const-string v1, "There was a problem connecting to the server."

    iput-object v1, p0, Lpk;->mFailureMessage:Ljava/lang/String;

    goto/16 :goto_4

    .line 143
    :catch_1
    move-exception v0

    goto :goto_5
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public a(Lalp;)V
    .locals 4
    .annotation build Lcdn;
    .end annotation

    .prologue
    .line 219
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lpk;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lpk;->mElapsedTime:J

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 220
    invoke-virtual {p0}, Lpk;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GetProfileInfoTask"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget v0, p0, Lpk;->mStatusCode:I

    invoke-static {v0}, Lauo;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lpk;->mResultJson:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lpk;->a(Ljava/lang/String;)V

    .line 237
    :goto_0
    invoke-virtual {p0, p1}, Lpk;->c(Lalp;)V

    .line 238
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lpk;->mFailureMessage:Ljava/lang/String;

    iget v1, p0, Lpk;->mStatusCode:I

    invoke-virtual {p0, v0, v1}, Lpk;->a(Ljava/lang/String;I)V

    .line 225
    invoke-virtual {p0, p1}, Lpk;->d(Lalp;)V

    goto :goto_0

    .line 227
    :cond_1
    iget-boolean v0, p0, Lpk;->m401Error:Z

    if-eqz v0, :cond_2

    .line 228
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;->AUTHENTICATION_ERROR:Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;)V

    invoke-static {}, Laph;->a()Laph;

    move-result-object v0

    invoke-virtual {v0}, Laph;->e()I

    goto :goto_0

    .line 229
    :cond_2
    iget-boolean v0, p0, Lpk;->m404Error:Z

    if-eqz v0, :cond_3

    .line 230
    invoke-virtual {p0}, Lpk;->f()V

    goto :goto_0

    .line 231
    :cond_3
    iget-object v0, p0, Lpk;->mFailureMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 232
    invoke-virtual {p0, p1}, Lpk;->b(Lalp;)V

    goto :goto_0

    .line 234
    :cond_4
    iget-object v0, p0, Lpk;->mFailureMessage:Ljava/lang/String;

    iget v1, p0, Lpk;->mStatusCode:I

    invoke-virtual {p0, v0, v1}, Lpk;->a(Ljava/lang/String;I)V

    .line 235
    invoke-virtual {p0, p1}, Lpk;->d(Lalp;)V

    goto :goto_0
.end method

.method protected final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 265
    const-string v0, "resultData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpk;->mResultJson:Ljava/lang/String;

    .line 266
    const-string v0, "statusCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lpk;->mStatusCode:I

    .line 267
    const-string v0, "hitCache"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lpk;->mHitCache:Z

    .line 268
    const-string v0, "firstByteDuration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lpk;->mFirstByteDuration:J

    .line 269
    const-string v0, "duration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lpk;->mElapsedTime:J

    .line 270
    const-string v0, "sentBytes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lpk;->mSentBytes:J

    .line 271
    const-string v0, "firstByteSize"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lpk;->mFirstByteSize:J

    .line 272
    const-string v0, "receivedBytes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lpk;->mReceivedBytes:J

    .line 273
    const-string v0, "reachability"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpk;->mReachability:Ljava/lang/String;

    .line 274
    const-string v0, "protocol"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpk;->mProtocol:Ljava/lang/String;

    .line 275
    const-string v0, "host"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpk;->mHost:Ljava/lang/String;

    .line 276
    const-string v0, "migrationResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpk;->mMigrationResult:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public a(Lbmv;Lbne;)V
    .locals 0

    .prologue
    .line 279
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0
    .annotation build Lcdn;
    .end annotation

    .prologue
    .line 282
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0
    .annotation build Lcdn;
    .end annotation

    .prologue
    .line 288
    return-void
.end method

.method public abstract b()Landroid/os/Bundle;
.end method

.method public b(Lalp;)V
    .locals 0
    .param p1    # Lalp;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation build Lcdn;
    .end annotation

    .prologue
    .line 285
    return-void
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method protected final c(Lalp;)V
    .locals 4

    .prologue
    .line 241
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "ENDPOINT_REQUEST"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "endpoint"

    invoke-virtual {p0}, Lpk;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "host"

    iget-object v2, p0, Lpk;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "status_code"

    iget v2, p0, Lpk;->mStatusCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "first_bytes_latency"

    iget-wide v2, p0, Lpk;->mFirstByteDuration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "total_latency"

    iget-wide v2, p0, Lpk;->mElapsedTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "first_bytes_size"

    iget-wide v2, p0, Lpk;->mFirstByteSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "request_size_bytes"

    iget-wide v2, p0, Lpk;->mSentBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "return_size_bytes"

    iget-wide v2, p0, Lpk;->mReceivedBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "Hit_Cache"

    iget-boolean v2, p0, Lpk;->mHitCache:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reachability"

    iget-object v2, p0, Lpk;->mReachability:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "requestId"

    iget-object v2, p0, Lpk;->mUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "protocol"

    iget-object v2, p0, Lpk;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    .line 254
    if-eqz p1, :cond_0

    iget-object v1, p1, Lalp;->server_info:Lbjx;

    if-eqz v1, :cond_0

    .line 255
    const-string v1, "server_latency"

    iget-object v2, p1, Lalp;->server_info:Lbjx;

    invoke-virtual {v2}, Lbjx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 256
    const-string v1, "response_checksum"

    iget-object v2, p1, Lalp;->server_info:Lbjx;

    invoke-virtual {v2}, Lbjx;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 257
    const-string v1, "response_compare_result"

    iget-object v2, p1, Lalp;->server_info:Lbjx;

    invoke-virtual {v2}, Lbjx;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 258
    const-string v1, "response_compare_results_dict"

    iget-object v2, p1, Lalp;->server_info:Lbjx;

    invoke-virtual {v2}, Lbjx;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 260
    :cond_0
    iget-object v1, p0, Lpk;->mMigrationResult:Ljava/lang/String;

    invoke-static {v0, v1}, Luy;->a(Lcom/snapchat/android/analytics/framework/EasyMetric;Ljava/lang/String;)V

    .line 261
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 262
    return-void
.end method

.method public d(Lalp;)V
    .locals 3
    .param p1    # Lalp;
        .annotation build Lchd;
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
    iget v0, p1, Lalp;->status:I

    const/16 v1, 0x1a2

    if-ne v0, v1, :cond_0

    .line 293
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbcm;

    iget-object v2, p1, Lalp;->message:Ljava/lang/String;

    invoke-direct {v1, v2}, Lbcm;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lpk;->a([Ljava/lang/String;)Lalp;

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
    iget v0, p0, Lpk;->mStatusCode:I

    return v0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    check-cast p1, Lalp;

    invoke-virtual {p0, p1}, Lpk;->a(Lalp;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 3
    .annotation build Lcdn;
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lpk;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 105
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lpk;->mUUID:Ljava/util/UUID;

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lpk;->mStartMillis:J

    .line 107
    return-void
.end method
