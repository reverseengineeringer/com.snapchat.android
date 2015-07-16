.class public final enum Lbje$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbje;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbje$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbje$a;

.field public static final enum DELTA:Lbje$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DELTA"
    .end annotation
.end field

.field public static final enum EQUAL:Lbje$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EQUAL"
    .end annotation
.end field

.field public static final enum NOT_EQUAL:Lbje$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NOT_EQUAL"
    .end annotation
.end field

.field public static final enum NOT_SUPPORT:Lbje$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NOT_SUPPORT"
    .end annotation
.end field

.field public static final enum UNRECOGNIZED_VALUE:Lbje$a;


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

    .line 100
    new-instance v0, Lbje$a;

    const-string v1, "EQUAL"

    const-string v2, "EQUAL"

    invoke-direct {v0, v1, v3, v2}, Lbje$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbje$a;->EQUAL:Lbje$a;

    .line 103
    new-instance v0, Lbje$a;

    const-string v1, "DELTA"

    const-string v2, "DELTA"

    invoke-direct {v0, v1, v4, v2}, Lbje$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbje$a;->DELTA:Lbje$a;

    .line 106
    new-instance v0, Lbje$a;

    const-string v1, "NOT_EQUAL"

    const-string v2, "NOT_EQUAL"

    invoke-direct {v0, v1, v5, v2}, Lbje$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbje$a;->NOT_EQUAL:Lbje$a;

    .line 109
    new-instance v0, Lbje$a;

    const-string v1, "NOT_SUPPORT"

    const-string v2, "NOT_SUPPORT"

    invoke-direct {v0, v1, v6, v2}, Lbje$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbje$a;->NOT_SUPPORT:Lbje$a;

    .line 112
    new-instance v0, Lbje$a;

    const-string v1, "UNRECOGNIZED_VALUE"

    const-string v2, "UNRECOGNIZED_VALUE"

    invoke-direct {v0, v1, v7, v2}, Lbje$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbje$a;->UNRECOGNIZED_VALUE:Lbje$a;

    .line 99
    const/4 v0, 0x5

    new-array v0, v0, [Lbje$a;

    sget-object v1, Lbje$a;->EQUAL:Lbje$a;

    aput-object v1, v0, v3

    sget-object v1, Lbje$a;->DELTA:Lbje$a;

    aput-object v1, v0, v4

    sget-object v1, Lbje$a;->NOT_EQUAL:Lbje$a;

    aput-object v1, v0, v5

    sget-object v1, Lbje$a;->NOT_SUPPORT:Lbje$a;

    aput-object v1, v0, v6

    sget-object v1, Lbje$a;->UNRECOGNIZED_VALUE:Lbje$a;

    aput-object v1, v0, v7

    sput-object v0, Lbje$a;->$VALUES:[Lbje$a;

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
    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 118
    iput-object p3, p0, Lbje$a;->value:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public static a(Ljava/lang/String;)Lbje$a;
    .locals 1

    .prologue
    .line 132
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbje$a;->valueOf(Ljava/lang/String;)Lbje$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lbje$a;->UNRECOGNIZED_VALUE:Lbje$a;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lbje$a;
    .locals 1

    .prologue
    .line 99
    const-class v0, Lbje$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbje$a;

    return-object v0
.end method

.method public static values()[Lbje$a;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lbje$a;->$VALUES:[Lbje$a;

    invoke-virtual {v0}, [Lbje$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbje$a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lbje$a;->value:Ljava/lang/String;

    return-object v0
.end method
