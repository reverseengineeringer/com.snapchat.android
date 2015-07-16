.class public final enum Lblo$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lblo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lblo$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lblo$a;

.field public static final enum NEW_CONTACT:Lblo$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "new_contact"
    .end annotation
.end field

.field public static final enum NEW_SNAPCHATTER:Lblo$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "new_snapchatter"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lblo$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "unknown"
    .end annotation
.end field

.field public static final enum UNRECOGNIZED_VALUE:Lblo$a;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lblo$a;

    const-string v1, "NEW_CONTACT"

    const-string v2, "new_contact"

    invoke-direct {v0, v1, v3, v2}, Lblo$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lblo$a;->NEW_CONTACT:Lblo$a;

    .line 23
    new-instance v0, Lblo$a;

    const-string v1, "NEW_SNAPCHATTER"

    const-string v2, "new_snapchatter"

    invoke-direct {v0, v1, v4, v2}, Lblo$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lblo$a;->NEW_SNAPCHATTER:Lblo$a;

    .line 26
    new-instance v0, Lblo$a;

    const-string v1, "UNKNOWN"

    const-string v2, "unknown"

    invoke-direct {v0, v1, v5, v2}, Lblo$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lblo$a;->UNKNOWN:Lblo$a;

    .line 29
    new-instance v0, Lblo$a;

    const-string v1, "UNRECOGNIZED_VALUE"

    const-string v2, "UNRECOGNIZED_VALUE"

    invoke-direct {v0, v1, v6, v2}, Lblo$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lblo$a;->UNRECOGNIZED_VALUE:Lblo$a;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Lblo$a;

    sget-object v1, Lblo$a;->NEW_CONTACT:Lblo$a;

    aput-object v1, v0, v3

    sget-object v1, Lblo$a;->NEW_SNAPCHATTER:Lblo$a;

    aput-object v1, v0, v4

    sget-object v1, Lblo$a;->UNKNOWN:Lblo$a;

    aput-object v1, v0, v5

    sget-object v1, Lblo$a;->UNRECOGNIZED_VALUE:Lblo$a;

    aput-object v1, v0, v6

    sput-object v0, Lblo$a;->$VALUES:[Lblo$a;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lblo$a;->value:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static a(Ljava/lang/String;)Lblo$a;
    .locals 1

    .prologue
    .line 49
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lblo$a;->valueOf(Ljava/lang/String;)Lblo$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lblo$a;->UNRECOGNIZED_VALUE:Lblo$a;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lblo$a;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lblo$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lblo$a;

    return-object v0
.end method

.method public static values()[Lblo$a;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lblo$a;->$VALUES:[Lblo$a;

    invoke-virtual {v0}, [Lblo$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lblo$a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lblo$a;->value:Ljava/lang/String;

    return-object v0
.end method
