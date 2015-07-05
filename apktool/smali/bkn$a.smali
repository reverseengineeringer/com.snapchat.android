.class public final enum Lbkn$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbkn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbkn$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbkn$a;

.field public static final enum NEW_CONTACT:Lbkn$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "new_contact"
    .end annotation
.end field

.field public static final enum NEW_SNAPCHATTER:Lbkn$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "new_snapchatter"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lbkn$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "unknown"
    .end annotation
.end field

.field public static final enum UNRECOGNIZED_VALUE:Lbkn$a;


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
    new-instance v0, Lbkn$a;

    const-string v1, "NEW_CONTACT"

    const-string v2, "new_contact"

    invoke-direct {v0, v1, v3, v2}, Lbkn$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbkn$a;->NEW_CONTACT:Lbkn$a;

    .line 23
    new-instance v0, Lbkn$a;

    const-string v1, "NEW_SNAPCHATTER"

    const-string v2, "new_snapchatter"

    invoke-direct {v0, v1, v4, v2}, Lbkn$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbkn$a;->NEW_SNAPCHATTER:Lbkn$a;

    .line 26
    new-instance v0, Lbkn$a;

    const-string v1, "UNKNOWN"

    const-string v2, "unknown"

    invoke-direct {v0, v1, v5, v2}, Lbkn$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbkn$a;->UNKNOWN:Lbkn$a;

    .line 29
    new-instance v0, Lbkn$a;

    const-string v1, "UNRECOGNIZED_VALUE"

    const-string v2, "UNRECOGNIZED_VALUE"

    invoke-direct {v0, v1, v6, v2}, Lbkn$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbkn$a;->UNRECOGNIZED_VALUE:Lbkn$a;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Lbkn$a;

    sget-object v1, Lbkn$a;->NEW_CONTACT:Lbkn$a;

    aput-object v1, v0, v3

    sget-object v1, Lbkn$a;->NEW_SNAPCHATTER:Lbkn$a;

    aput-object v1, v0, v4

    sget-object v1, Lbkn$a;->UNKNOWN:Lbkn$a;

    aput-object v1, v0, v5

    sget-object v1, Lbkn$a;->UNRECOGNIZED_VALUE:Lbkn$a;

    aput-object v1, v0, v6

    sput-object v0, Lbkn$a;->$VALUES:[Lbkn$a;

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
    iput-object p3, p0, Lbkn$a;->value:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static a(Ljava/lang/String;)Lbkn$a;
    .locals 1

    .prologue
    .line 49
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbkn$a;->valueOf(Ljava/lang/String;)Lbkn$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lbkn$a;->UNRECOGNIZED_VALUE:Lbkn$a;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lbkn$a;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lbkn$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbkn$a;

    return-object v0
.end method

.method public static values()[Lbkn$a;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lbkn$a;->$VALUES:[Lbkn$a;

    invoke-virtual {v0}, [Lbkn$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbkn$a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lbkn$a;->value:Ljava/lang/String;

    return-object v0
.end method
