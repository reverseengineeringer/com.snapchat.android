.class public final enum Lbij$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbij;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbij$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbij$a;

.field public static final enum DISCOVER_SHARE_V2:Lbij$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "discover_share_v2"
    .end annotation
.end field

.field public static final enum HERE_SCREENSHOT:Lbij$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "here_screenshot"
    .end annotation
.end field

.field public static final enum MEDIA:Lbij$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media"
    .end annotation
.end field

.field public static final enum SCREENSHOT:Lbij$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "screenshot"
    .end annotation
.end field

.field public static final enum TEXT:Lbij$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text"
    .end annotation
.end field

.field public static final enum UNRECOGNIZED_VALUE:Lbij$a;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 24
    new-instance v0, Lbij$a;

    const-string v1, "TEXT"

    const-string v2, "text"

    invoke-direct {v0, v1, v4, v2}, Lbij$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbij$a;->TEXT:Lbij$a;

    .line 27
    new-instance v0, Lbij$a;

    const-string v1, "MEDIA"

    const-string v2, "media"

    invoke-direct {v0, v1, v5, v2}, Lbij$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbij$a;->MEDIA:Lbij$a;

    .line 30
    new-instance v0, Lbij$a;

    const-string v1, "SCREENSHOT"

    const-string v2, "screenshot"

    invoke-direct {v0, v1, v6, v2}, Lbij$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbij$a;->SCREENSHOT:Lbij$a;

    .line 33
    new-instance v0, Lbij$a;

    const-string v1, "HERE_SCREENSHOT"

    const-string v2, "here_screenshot"

    invoke-direct {v0, v1, v7, v2}, Lbij$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbij$a;->HERE_SCREENSHOT:Lbij$a;

    .line 36
    new-instance v0, Lbij$a;

    const-string v1, "DISCOVER_SHARE_V2"

    const-string v2, "discover_share_v2"

    invoke-direct {v0, v1, v8, v2}, Lbij$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbij$a;->DISCOVER_SHARE_V2:Lbij$a;

    .line 39
    new-instance v0, Lbij$a;

    const-string v1, "UNRECOGNIZED_VALUE"

    const/4 v2, 0x5

    const-string v3, "UNRECOGNIZED_VALUE"

    invoke-direct {v0, v1, v2, v3}, Lbij$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbij$a;->UNRECOGNIZED_VALUE:Lbij$a;

    .line 23
    const/4 v0, 0x6

    new-array v0, v0, [Lbij$a;

    sget-object v1, Lbij$a;->TEXT:Lbij$a;

    aput-object v1, v0, v4

    sget-object v1, Lbij$a;->MEDIA:Lbij$a;

    aput-object v1, v0, v5

    sget-object v1, Lbij$a;->SCREENSHOT:Lbij$a;

    aput-object v1, v0, v6

    sget-object v1, Lbij$a;->HERE_SCREENSHOT:Lbij$a;

    aput-object v1, v0, v7

    sget-object v1, Lbij$a;->DISCOVER_SHARE_V2:Lbij$a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lbij$a;->UNRECOGNIZED_VALUE:Lbij$a;

    aput-object v2, v0, v1

    sput-object v0, Lbij$a;->$VALUES:[Lbij$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lbij$a;->value:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static a(Ljava/lang/String;)Lbij$a;
    .locals 1

    .prologue
    .line 59
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbij$a;->valueOf(Ljava/lang/String;)Lbij$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lbij$a;->UNRECOGNIZED_VALUE:Lbij$a;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lbij$a;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lbij$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbij$a;

    return-object v0
.end method

.method public static values()[Lbij$a;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lbij$a;->$VALUES:[Lbij$a;

    invoke-virtual {v0}, [Lbij$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbij$a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lbij$a;->value:Ljava/lang/String;

    return-object v0
.end method
