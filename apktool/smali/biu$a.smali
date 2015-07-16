.class public final enum Lbiu$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbiu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbiu$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbiu$a;

.field public static final enum BLOCKED:Lbiu$a;

.field public static final enum DELETED:Lbiu$a;

.field public static final enum FOLLOWING:Lbiu$a;

.field public static final enum FRIEND:Lbiu$a;

.field public static final enum INVITE_PLACEHOLDER:Lbiu$a;

.field public static final enum LOCKED_PLACEHOLDER:Lbiu$a;

.field public static final enum PENDING:Lbiu$a;

.field public static final enum UNRECOGNIZED_VALUE:Lbiu$a;

.field private static final VALUE_TO_ENUM:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lbiu$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 20
    new-instance v1, Lbiu$a;

    const-string v2, "FRIEND"

    invoke-direct {v1, v2, v0, v0}, Lbiu$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbiu$a;->FRIEND:Lbiu$a;

    .line 22
    new-instance v1, Lbiu$a;

    const-string v2, "PENDING"

    invoke-direct {v1, v2, v5, v5}, Lbiu$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbiu$a;->PENDING:Lbiu$a;

    .line 24
    new-instance v1, Lbiu$a;

    const-string v2, "BLOCKED"

    invoke-direct {v1, v2, v6, v6}, Lbiu$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbiu$a;->BLOCKED:Lbiu$a;

    .line 26
    new-instance v1, Lbiu$a;

    const-string v2, "DELETED"

    invoke-direct {v1, v2, v7, v7}, Lbiu$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbiu$a;->DELETED:Lbiu$a;

    .line 28
    new-instance v1, Lbiu$a;

    const-string v2, "INVITE_PLACEHOLDER"

    invoke-direct {v1, v2, v8, v8}, Lbiu$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbiu$a;->INVITE_PLACEHOLDER:Lbiu$a;

    .line 30
    new-instance v1, Lbiu$a;

    const-string v2, "LOCKED_PLACEHOLDER"

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lbiu$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbiu$a;->LOCKED_PLACEHOLDER:Lbiu$a;

    .line 32
    new-instance v1, Lbiu$a;

    const-string v2, "FOLLOWING"

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Lbiu$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbiu$a;->FOLLOWING:Lbiu$a;

    .line 34
    new-instance v1, Lbiu$a;

    const-string v2, "UNRECOGNIZED_VALUE"

    const/4 v3, 0x7

    const/16 v4, -0x270f

    invoke-direct {v1, v2, v3, v4}, Lbiu$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbiu$a;->UNRECOGNIZED_VALUE:Lbiu$a;

    .line 19
    const/16 v1, 0x8

    new-array v1, v1, [Lbiu$a;

    sget-object v2, Lbiu$a;->FRIEND:Lbiu$a;

    aput-object v2, v1, v0

    sget-object v2, Lbiu$a;->PENDING:Lbiu$a;

    aput-object v2, v1, v5

    sget-object v2, Lbiu$a;->BLOCKED:Lbiu$a;

    aput-object v2, v1, v6

    sget-object v2, Lbiu$a;->DELETED:Lbiu$a;

    aput-object v2, v1, v7

    sget-object v2, Lbiu$a;->INVITE_PLACEHOLDER:Lbiu$a;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lbiu$a;->LOCKED_PLACEHOLDER:Lbiu$a;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lbiu$a;->FOLLOWING:Lbiu$a;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lbiu$a;->UNRECOGNIZED_VALUE:Lbiu$a;

    aput-object v3, v1, v2

    sput-object v1, Lbiu$a;->$VALUES:[Lbiu$a;

    .line 47
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lbiu$a;->VALUE_TO_ENUM:Ljava/util/HashMap;

    .line 51
    invoke-static {}, Lbiu$a;->values()[Lbiu$a;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 52
    sget-object v4, Lbiu$a;->VALUE_TO_ENUM:Ljava/util/HashMap;

    iget v5, v3, Lbiu$a;->intValue:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lbiu$a;->intValue:I

    .line 41
    return-void
.end method

.method public static a(Ljava/lang/Integer;)Lbiu$a;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lbiu$a;->VALUE_TO_ENUM:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiu$a;

    .line 58
    if-nez v0, :cond_0

    sget-object v0, Lbiu$a;->UNRECOGNIZED_VALUE:Lbiu$a;

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lbiu$a;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lbiu$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbiu$a;

    return-object v0
.end method

.method public static values()[Lbiu$a;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lbiu$a;->$VALUES:[Lbiu$a;

    invoke-virtual {v0}, [Lbiu$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbiu$a;

    return-object v0
.end method
