.class public final enum Lbie$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbie$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbie$a;

.field public static final enum DELTA:Lbie$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DELTA"
    .end annotation
.end field

.field public static final enum EQUAL:Lbie$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EQUAL"
    .end annotation
.end field

.field public static final enum NOT_EQUAL:Lbie$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NOT_EQUAL"
    .end annotation
.end field

.field public static final enum NOT_SUPPORT:Lbie$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NOT_SUPPORT"
    .end annotation
.end field

.field public static final enum UNRECOGNIZED_VALUE:Lbie$a;


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

    .line 60
    new-instance v0, Lbie$a;

    const-string v1, "EQUAL"

    const-string v2, "EQUAL"

    invoke-direct {v0, v1, v3, v2}, Lbie$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbie$a;->EQUAL:Lbie$a;

    .line 63
    new-instance v0, Lbie$a;

    const-string v1, "DELTA"

    const-string v2, "DELTA"

    invoke-direct {v0, v1, v4, v2}, Lbie$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbie$a;->DELTA:Lbie$a;

    .line 66
    new-instance v0, Lbie$a;

    const-string v1, "NOT_EQUAL"

    const-string v2, "NOT_EQUAL"

    invoke-direct {v0, v1, v5, v2}, Lbie$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbie$a;->NOT_EQUAL:Lbie$a;

    .line 69
    new-instance v0, Lbie$a;

    const-string v1, "NOT_SUPPORT"

    const-string v2, "NOT_SUPPORT"

    invoke-direct {v0, v1, v6, v2}, Lbie$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbie$a;->NOT_SUPPORT:Lbie$a;

    .line 72
    new-instance v0, Lbie$a;

    const-string v1, "UNRECOGNIZED_VALUE"

    const-string v2, "UNRECOGNIZED_VALUE"

    invoke-direct {v0, v1, v7, v2}, Lbie$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbie$a;->UNRECOGNIZED_VALUE:Lbie$a;

    .line 59
    const/4 v0, 0x5

    new-array v0, v0, [Lbie$a;

    sget-object v1, Lbie$a;->EQUAL:Lbie$a;

    aput-object v1, v0, v3

    sget-object v1, Lbie$a;->DELTA:Lbie$a;

    aput-object v1, v0, v4

    sget-object v1, Lbie$a;->NOT_EQUAL:Lbie$a;

    aput-object v1, v0, v5

    sget-object v1, Lbie$a;->NOT_SUPPORT:Lbie$a;

    aput-object v1, v0, v6

    sget-object v1, Lbie$a;->UNRECOGNIZED_VALUE:Lbie$a;

    aput-object v1, v0, v7

    sput-object v0, Lbie$a;->$VALUES:[Lbie$a;

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
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput-object p3, p0, Lbie$a;->value:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public static a(Ljava/lang/String;)Lbie$a;
    .locals 1

    .prologue
    .line 92
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbie$a;->valueOf(Ljava/lang/String;)Lbie$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lbie$a;->UNRECOGNIZED_VALUE:Lbie$a;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lbie$a;
    .locals 1

    .prologue
    .line 59
    const-class v0, Lbie$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbie$a;

    return-object v0
.end method

.method public static values()[Lbie$a;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lbie$a;->$VALUES:[Lbie$a;

    invoke-virtual {v0}, [Lbie$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbie$a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lbie$a;->value:Ljava/lang/String;

    return-object v0
.end method
