.class public final enum Lbhu$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbhu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbhu$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbhu$a;

.field public static final enum BLOCKED:Lbhu$a;

.field public static final enum DELETED:Lbhu$a;

.field public static final enum FOLLOWING:Lbhu$a;

.field public static final enum FRIEND:Lbhu$a;

.field public static final enum INVITE_PLACEHOLDER:Lbhu$a;

.field public static final enum LOCKED_PLACEHOLDER:Lbhu$a;

.field public static final enum PENDING:Lbhu$a;

.field public static final enum UNRECOGNIZED_VALUE:Lbhu$a;

.field private static final VALUE_TO_ENUM:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lbhu$a;",
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
    new-instance v1, Lbhu$a;

    const-string v2, "FRIEND"

    invoke-direct {v1, v2, v0, v0}, Lbhu$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbhu$a;->FRIEND:Lbhu$a;

    .line 22
    new-instance v1, Lbhu$a;

    const-string v2, "PENDING"

    invoke-direct {v1, v2, v5, v5}, Lbhu$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbhu$a;->PENDING:Lbhu$a;

    .line 24
    new-instance v1, Lbhu$a;

    const-string v2, "BLOCKED"

    invoke-direct {v1, v2, v6, v6}, Lbhu$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbhu$a;->BLOCKED:Lbhu$a;

    .line 26
    new-instance v1, Lbhu$a;

    const-string v2, "DELETED"

    invoke-direct {v1, v2, v7, v7}, Lbhu$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbhu$a;->DELETED:Lbhu$a;

    .line 28
    new-instance v1, Lbhu$a;

    const-string v2, "INVITE_PLACEHOLDER"

    invoke-direct {v1, v2, v8, v8}, Lbhu$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbhu$a;->INVITE_PLACEHOLDER:Lbhu$a;

    .line 30
    new-instance v1, Lbhu$a;

    const-string v2, "LOCKED_PLACEHOLDER"

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lbhu$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbhu$a;->LOCKED_PLACEHOLDER:Lbhu$a;

    .line 32
    new-instance v1, Lbhu$a;

    const-string v2, "FOLLOWING"

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Lbhu$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbhu$a;->FOLLOWING:Lbhu$a;

    .line 34
    new-instance v1, Lbhu$a;

    const-string v2, "UNRECOGNIZED_VALUE"

    const/4 v3, 0x7

    const/16 v4, -0x270f

    invoke-direct {v1, v2, v3, v4}, Lbhu$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbhu$a;->UNRECOGNIZED_VALUE:Lbhu$a;

    .line 19
    const/16 v1, 0x8

    new-array v1, v1, [Lbhu$a;

    sget-object v2, Lbhu$a;->FRIEND:Lbhu$a;

    aput-object v2, v1, v0

    sget-object v2, Lbhu$a;->PENDING:Lbhu$a;

    aput-object v2, v1, v5

    sget-object v2, Lbhu$a;->BLOCKED:Lbhu$a;

    aput-object v2, v1, v6

    sget-object v2, Lbhu$a;->DELETED:Lbhu$a;

    aput-object v2, v1, v7

    sget-object v2, Lbhu$a;->INVITE_PLACEHOLDER:Lbhu$a;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lbhu$a;->LOCKED_PLACEHOLDER:Lbhu$a;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lbhu$a;->FOLLOWING:Lbhu$a;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lbhu$a;->UNRECOGNIZED_VALUE:Lbhu$a;

    aput-object v3, v1, v2

    sput-object v1, Lbhu$a;->$VALUES:[Lbhu$a;

    .line 47
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lbhu$a;->VALUE_TO_ENUM:Ljava/util/HashMap;

    .line 51
    invoke-static {}, Lbhu$a;->values()[Lbhu$a;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 52
    sget-object v4, Lbhu$a;->VALUE_TO_ENUM:Ljava/util/HashMap;

    iget v5, v3, Lbhu$a;->intValue:I

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
    iput p3, p0, Lbhu$a;->intValue:I

    .line 41
    return-void
.end method

.method public static a(Ljava/lang/Integer;)Lbhu$a;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lbhu$a;->VALUE_TO_ENUM:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhu$a;

    .line 58
    if-nez v0, :cond_0

    sget-object v0, Lbhu$a;->UNRECOGNIZED_VALUE:Lbhu$a;

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lbhu$a;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lbhu$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbhu$a;

    return-object v0
.end method

.method public static values()[Lbhu$a;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lbhu$a;->$VALUES:[Lbhu$a;

    invoke-virtual {v0}, [Lbhu$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbhu$a;

    return-object v0
.end method
