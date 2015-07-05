.class public final enum Lbiw$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbiw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbiw$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbiw$a;

.field public static final enum DELTA:Lbiw$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DELTA"
    .end annotation
.end field

.field public static final enum EQUAL:Lbiw$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EQUAL"
    .end annotation
.end field

.field public static final enum NOT_EQUAL:Lbiw$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NOT_EQUAL"
    .end annotation
.end field

.field public static final enum NOT_SUPPORT:Lbiw$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NOT_SUPPORT"
    .end annotation
.end field

.field public static final enum UNRECOGNIZED_VALUE:Lbiw$a;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lbiw$a;

    const-string v1, "EQUAL"

    const-string v2, "EQUAL"

    invoke-direct {v0, v1, v3, v2}, Lbiw$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbiw$a;->EQUAL:Lbiw$a;

    .line 23
    new-instance v0, Lbiw$a;

    const-string v1, "DELTA"

    const-string v2, "DELTA"

    invoke-direct {v0, v1, v4, v2}, Lbiw$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbiw$a;->DELTA:Lbiw$a;

    .line 26
    new-instance v0, Lbiw$a;

    const-string v1, "NOT_EQUAL"

    const-string v2, "NOT_EQUAL"

    invoke-direct {v0, v1, v5, v2}, Lbiw$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbiw$a;->NOT_EQUAL:Lbiw$a;

    .line 29
    new-instance v0, Lbiw$a;

    const-string v1, "NOT_SUPPORT"

    const-string v2, "NOT_SUPPORT"

    invoke-direct {v0, v1, v6, v2}, Lbiw$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbiw$a;->NOT_SUPPORT:Lbiw$a;

    .line 32
    new-instance v0, Lbiw$a;

    const-string v1, "UNRECOGNIZED_VALUE"

    const-string v2, "UNRECOGNIZED_VALUE"

    invoke-direct {v0, v1, v7, v2}, Lbiw$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbiw$a;->UNRECOGNIZED_VALUE:Lbiw$a;

    .line 19
    const/4 v0, 0x5

    new-array v0, v0, [Lbiw$a;

    sget-object v1, Lbiw$a;->EQUAL:Lbiw$a;

    aput-object v1, v0, v3

    sget-object v1, Lbiw$a;->DELTA:Lbiw$a;

    aput-object v1, v0, v4

    sget-object v1, Lbiw$a;->NOT_EQUAL:Lbiw$a;

    aput-object v1, v0, v5

    sget-object v1, Lbiw$a;->NOT_SUPPORT:Lbiw$a;

    aput-object v1, v0, v6

    sget-object v1, Lbiw$a;->UNRECOGNIZED_VALUE:Lbiw$a;

    aput-object v1, v0, v7

    sput-object v0, Lbiw$a;->$VALUES:[Lbiw$a;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lbiw$a;->value:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static a(Ljava/lang/String;)Lbiw$a;
    .locals 1

    .prologue
    .line 52
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbiw$a;->valueOf(Ljava/lang/String;)Lbiw$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lbiw$a;->UNRECOGNIZED_VALUE:Lbiw$a;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lbiw$a;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lbiw$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbiw$a;

    return-object v0
.end method

.method public static values()[Lbiw$a;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lbiw$a;->$VALUES:[Lbiw$a;

    invoke-virtual {v0}, [Lbiw$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbiw$a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lbiw$a;->value:Ljava/lang/String;

    return-object v0
.end method
