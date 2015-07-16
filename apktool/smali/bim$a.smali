.class public final enum Lbim$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbim$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbim$a;

.field public static final enum INTERNAL_ERROR:Lbim$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "INTERNAL_ERROR"
    .end annotation
.end field

.field public static final enum INVALID_MESSAGE:Lbim$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "INVALID_MESSAGE"
    .end annotation
.end field

.field public static final enum NEED_AUTHENTICATION:Lbim$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NEED_AUTHENTICATION"
    .end annotation
.end field

.field public static final enum UNRECOGNIZED_VALUE:Lbim$a;


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

    .line 21
    new-instance v0, Lbim$a;

    const-string v1, "NEED_AUTHENTICATION"

    const-string v2, "NEED_AUTHENTICATION"

    invoke-direct {v0, v1, v3, v2}, Lbim$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbim$a;->NEED_AUTHENTICATION:Lbim$a;

    .line 24
    new-instance v0, Lbim$a;

    const-string v1, "INTERNAL_ERROR"

    const-string v2, "INTERNAL_ERROR"

    invoke-direct {v0, v1, v4, v2}, Lbim$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbim$a;->INTERNAL_ERROR:Lbim$a;

    .line 27
    new-instance v0, Lbim$a;

    const-string v1, "INVALID_MESSAGE"

    const-string v2, "INVALID_MESSAGE"

    invoke-direct {v0, v1, v5, v2}, Lbim$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbim$a;->INVALID_MESSAGE:Lbim$a;

    .line 30
    new-instance v0, Lbim$a;

    const-string v1, "UNRECOGNIZED_VALUE"

    const-string v2, "UNRECOGNIZED_VALUE"

    invoke-direct {v0, v1, v6, v2}, Lbim$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbim$a;->UNRECOGNIZED_VALUE:Lbim$a;

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lbim$a;

    sget-object v1, Lbim$a;->NEED_AUTHENTICATION:Lbim$a;

    aput-object v1, v0, v3

    sget-object v1, Lbim$a;->INTERNAL_ERROR:Lbim$a;

    aput-object v1, v0, v4

    sget-object v1, Lbim$a;->INVALID_MESSAGE:Lbim$a;

    aput-object v1, v0, v5

    sget-object v1, Lbim$a;->UNRECOGNIZED_VALUE:Lbim$a;

    aput-object v1, v0, v6

    sput-object v0, Lbim$a;->$VALUES:[Lbim$a;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lbim$a;->value:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static a(Ljava/lang/String;)Lbim$a;
    .locals 1

    .prologue
    .line 50
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbim$a;->valueOf(Ljava/lang/String;)Lbim$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lbim$a;->UNRECOGNIZED_VALUE:Lbim$a;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lbim$a;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lbim$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbim$a;

    return-object v0
.end method

.method public static values()[Lbim$a;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lbim$a;->$VALUES:[Lbim$a;

    invoke-virtual {v0}, [Lbim$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbim$a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lbim$a;->value:Ljava/lang/String;

    return-object v0
.end method
