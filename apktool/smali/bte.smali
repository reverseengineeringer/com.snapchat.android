.class public final enum Lbte;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lbte;

.field public static final enum b:Lbte;

.field public static final enum c:Lbte;

.field public static final enum d:Lbte;

.field public static final enum e:Lbte;

.field public static final enum f:Lbte;

.field public static final enum g:Lbte;

.field public static final enum h:Lbte;

.field public static final enum i:Lbte;

.field public static final enum j:Lbte;

.field public static final enum k:Lbte;

.field public static final enum l:Lbte;

.field public static final enum m:Lbte;

.field private static final synthetic p:[Lbte;


# instance fields
.field n:Ljava/lang/String;

.field o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4
    new-instance v0, Lbte;

    const-string v1, "APP_LOADS_FILES"

    const-string v2, "com.crittercism.apploads"

    const-string v3, "appLoadFiles"

    invoke-direct {v0, v1, v5, v2, v3}, Lbte;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbte;->a:Lbte;

    .line 5
    new-instance v0, Lbte;

    const-string v1, "HANDLED_EXCEPTION_FILES"

    const-string v2, "com.crittercism.exceptions"

    const-string v3, "handledExceptionFiles"

    invoke-direct {v0, v1, v6, v2, v3}, Lbte;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbte;->b:Lbte;

    .line 6
    new-instance v0, Lbte;

    const-string v1, "SDK_CRASHES_FILES"

    const-string v2, "com.crittercism.sdkcrashes"

    const-string v3, "sdkCrashFiles"

    invoke-direct {v0, v1, v7, v2, v3}, Lbte;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbte;->c:Lbte;

    .line 7
    new-instance v0, Lbte;

    const-string v1, "NDK_CRASHES_FILES"

    const-string v2, "com.crittercism.ndkcrashes"

    const-string v3, "ndkCrashFiles"

    invoke-direct {v0, v1, v8, v2, v3}, Lbte;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbte;->d:Lbte;

    .line 8
    new-instance v0, Lbte;

    const-string v1, "CURRENT_BREADCRUMBS_FILES"

    const-string v2, "com.crittercism.breadcrumbs"

    const-string v3, "currentBreadcrumbFiles"

    invoke-direct {v0, v1, v9, v2, v3}, Lbte;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbte;->e:Lbte;

    .line 9
    new-instance v0, Lbte;

    const-string v1, "PREVIOUS_BREADCRUMBS_FILES"

    const/4 v2, 0x5

    const-string v3, "com.crittercism.breadcrumbs"

    const-string v4, "previousBreadcrumbFiles"

    invoke-direct {v0, v1, v2, v3, v4}, Lbte;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbte;->f:Lbte;

    .line 10
    new-instance v0, Lbte;

    const-string v1, "NETWORK_BREADCRUMBS_FILES"

    const/4 v2, 0x6

    const-string v3, "com.crittercism.breadcrumbs"

    const-string v4, "networkBreadcrumbFiles"

    invoke-direct {v0, v1, v2, v3, v4}, Lbte;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbte;->g:Lbte;

    .line 11
    new-instance v0, Lbte;

    const-string v1, "RATE_APP_SETTING"

    const/4 v2, 0x7

    const-string v3, "com.crittercism.usersettings"

    const-string v4, "rateAppSettings"

    invoke-direct {v0, v1, v2, v3, v4}, Lbte;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbte;->h:Lbte;

    .line 12
    new-instance v0, Lbte;

    const-string v1, "CRASHED_ON_LAST_LOAD_SETTING"

    const/16 v2, 0x8

    const-string v3, "com.crittercism.usersettings"

    const-string v4, "crashedOnLastLoad"

    invoke-direct {v0, v1, v2, v3, v4}, Lbte;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbte;->i:Lbte;

    .line 13
    new-instance v0, Lbte;

    const-string v1, "OPT_OUT_STATUS_SETTING"

    const/16 v2, 0x9

    const-string v3, "com.crittercism.usersettings"

    const-string v4, "optOutStatusSettings"

    invoke-direct {v0, v1, v2, v3, v4}, Lbte;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbte;->j:Lbte;

    .line 14
    new-instance v0, Lbte;

    const-string v1, "SESSION_ID_SETTING"

    const/16 v2, 0xa

    const-string v3, "com.crittercism.usersettings"

    const-string v4, "sessionIDSetting"

    invoke-direct {v0, v1, v2, v3, v4}, Lbte;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbte;->k:Lbte;

    .line 15
    new-instance v0, Lbte;

    const-string v1, "OLD_SESSION_ID_SETTING"

    const/16 v2, 0xb

    const-string v3, "com.crittercism.prefs"

    const-string v4, "com.crittercism.prefs.sessid"

    invoke-direct {v0, v1, v2, v3, v4}, Lbte;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbte;->l:Lbte;

    .line 16
    new-instance v0, Lbte;

    const-string v1, "OLD_OPT_OUT_STATUS_SETTING"

    const/16 v2, 0xc

    const-string v3, "com.crittercism.prefs"

    const-string v4, "optOutStatus"

    invoke-direct {v0, v1, v2, v3, v4}, Lbte;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbte;->m:Lbte;

    .line 3
    const/16 v0, 0xd

    new-array v0, v0, [Lbte;

    sget-object v1, Lbte;->a:Lbte;

    aput-object v1, v0, v5

    sget-object v1, Lbte;->b:Lbte;

    aput-object v1, v0, v6

    sget-object v1, Lbte;->c:Lbte;

    aput-object v1, v0, v7

    sget-object v1, Lbte;->d:Lbte;

    aput-object v1, v0, v8

    sget-object v1, Lbte;->e:Lbte;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lbte;->f:Lbte;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lbte;->g:Lbte;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lbte;->h:Lbte;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lbte;->i:Lbte;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lbte;->j:Lbte;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lbte;->k:Lbte;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lbte;->l:Lbte;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lbte;->m:Lbte;

    aput-object v2, v0, v1

    sput-object v0, Lbte;->p:[Lbte;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lbte;->n:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lbte;->o:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbte;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lbte;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbte;

    return-object v0
.end method

.method public static values()[Lbte;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lbte;->p:[Lbte;

    invoke-virtual {v0}, [Lbte;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbte;

    return-object v0
.end method
