.class public final enum Lcom/snapchat/android/util/Property;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/Property;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/util/Property;

.field public static final enum ENABLE_CURSOR_ADAPTER:Lcom/snapchat/android/util/Property;

.field public static final enum ENABLE_GEOFILTER_LOGGING:Lcom/snapchat/android/util/Property;

.field public static final enum ENABLE_SNAPSCAN_DEBUG:Lcom/snapchat/android/util/Property;

.field public static final enum ENABLE_USER_INIT_DELAY:Lcom/snapchat/android/util/Property;


# instance fields
.field private final mDefaultValue:Ljava/lang/String;

.field private final mKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Lcom/snapchat/android/util/Property;

    const-string v1, "ENABLE_GEOFILTER_LOGGING"

    const-string v2, "debug.sc.geofilter_logging"

    invoke-direct {v0, v1, v3, v2}, Lcom/snapchat/android/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/util/Property;->ENABLE_GEOFILTER_LOGGING:Lcom/snapchat/android/util/Property;

    .line 21
    new-instance v0, Lcom/snapchat/android/util/Property;

    const-string v1, "ENABLE_USER_INIT_DELAY"

    const-string v2, "debug.sc.user_init_delay"

    invoke-direct {v0, v1, v4, v2}, Lcom/snapchat/android/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/util/Property;->ENABLE_USER_INIT_DELAY:Lcom/snapchat/android/util/Property;

    .line 24
    new-instance v0, Lcom/snapchat/android/util/Property;

    const-string v1, "ENABLE_CURSOR_ADAPTER"

    const-string v2, "debug.sc.cursor_adapter"

    invoke-direct {v0, v1, v5, v2}, Lcom/snapchat/android/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/util/Property;->ENABLE_CURSOR_ADAPTER:Lcom/snapchat/android/util/Property;

    .line 27
    new-instance v0, Lcom/snapchat/android/util/Property;

    const-string v1, "ENABLE_SNAPSCAN_DEBUG"

    const-string v2, "debug.sc.enable_snapscan_debug"

    invoke-direct {v0, v1, v6, v2}, Lcom/snapchat/android/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/util/Property;->ENABLE_SNAPSCAN_DEBUG:Lcom/snapchat/android/util/Property;

    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/snapchat/android/util/Property;

    sget-object v1, Lcom/snapchat/android/util/Property;->ENABLE_GEOFILTER_LOGGING:Lcom/snapchat/android/util/Property;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/util/Property;->ENABLE_USER_INIT_DELAY:Lcom/snapchat/android/util/Property;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/util/Property;->ENABLE_CURSOR_ADAPTER:Lcom/snapchat/android/util/Property;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/util/Property;->ENABLE_SNAPSCAN_DEBUG:Lcom/snapchat/android/util/Property;

    aput-object v1, v0, v6

    sput-object v0, Lcom/snapchat/android/util/Property;->$VALUES:[Lcom/snapchat/android/util/Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/snapchat/android/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    .line 35
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "BB)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lcom/snapchat/android/util/Property;->mKey:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/util/Property;->mDefaultValue:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/Property;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/snapchat/android/util/Property;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/Property;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/util/Property;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/snapchat/android/util/Property;->$VALUES:[Lcom/snapchat/android/util/Property;

    invoke-virtual {v0}, [Lcom/snapchat/android/util/Property;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/Property;

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/String;
    .locals 2
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 47
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/util/Property;->mKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/snapchat/android/util/Property;->mDefaultValue:Ljava/lang/String;

    invoke-static {v0, v1}, Lawb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getBoolean()Z
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/snapchat/android/util/Property;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
