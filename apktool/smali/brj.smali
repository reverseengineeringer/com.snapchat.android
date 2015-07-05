.class public final enum Lbrj;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lbrj;

.field public static final enum b:Lbrj;

.field public static final enum c:Lbrj;

.field public static final enum d:Lbrj;

.field public static final enum e:Lbrj;

.field public static final enum f:Lbrj;

.field public static final enum g:Lbrj;

.field public static final enum h:Lbrj;

.field private static final synthetic p:[Lbrj;


# instance fields
.field i:Ljava/lang/String;

.field j:I

.field k:I

.field l:Lbrk$a;

.field m:Lbrx;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 9
    new-instance v0, Lbrj;

    const-string v1, "APP_LOADS"

    const/4 v2, 0x0

    const-string v3, "app_loads"

    const/16 v4, 0xa

    const v5, 0x7fffffff

    new-instance v6, Lbrk$a;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lbrk$a;-><init>(I)V

    new-instance v7, Lbrq$a;

    invoke-direct {v7}, Lbrq$a;-><init>()V

    const-string v8, "/android_v2/handle_app_loads"

    const-string v9, "app_loads"

    invoke-direct/range {v0 .. v9}, Lbrj;-><init>(Ljava/lang/String;ILjava/lang/String;IILbrk$a;Lbrx;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbrj;->a:Lbrj;

    .line 17
    new-instance v0, Lbrj;

    const-string v1, "HAND_EXCS"

    const/4 v2, 0x1

    const-string v3, "exceptions"

    const/4 v4, 0x5

    const/16 v5, 0x32

    new-instance v6, Lbrk$a;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lbrk$a;-><init>(I)V

    new-instance v7, Lbrq$a;

    invoke-direct {v7}, Lbrq$a;-><init>()V

    const-string v8, "/android_v2/handle_exceptions"

    const-string v9, "exceptions"

    invoke-direct/range {v0 .. v9}, Lbrj;-><init>(Ljava/lang/String;ILjava/lang/String;IILbrk$a;Lbrx;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbrj;->b:Lbrj;

    .line 25
    new-instance v0, Lbrj;

    const-string v1, "INTERNAL_EXCS"

    const/4 v2, 0x2

    const-string v3, "internal_excs"

    const/4 v4, 0x3

    const/4 v5, 0x3

    new-instance v6, Lbrk$a;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lbrk$a;-><init>(I)V

    new-instance v7, Lbrq$a;

    invoke-direct {v7}, Lbrq$a;-><init>()V

    const-string v8, "/android_v2/handle_exceptions"

    const-string v9, "exceptions"

    invoke-direct/range {v0 .. v9}, Lbrj;-><init>(Ljava/lang/String;ILjava/lang/String;IILbrk$a;Lbrx;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbrj;->c:Lbrj;

    .line 33
    new-instance v0, Lbrj;

    const-string v1, "NDK_CRASHES"

    const/4 v2, 0x3

    const-string v3, "ndk_crashes"

    const/4 v4, 0x5

    const v5, 0x7fffffff

    new-instance v6, Lbrk$a;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lbrk$a;-><init>(I)V

    new-instance v7, Lbrq$a;

    invoke-direct {v7}, Lbrq$a;-><init>()V

    const-string v8, "/android_v2/handle_ndk_crashes"

    const-string v9, "crashes"

    invoke-direct/range {v0 .. v9}, Lbrj;-><init>(Ljava/lang/String;ILjava/lang/String;IILbrk$a;Lbrx;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbrj;->d:Lbrj;

    .line 41
    new-instance v0, Lbrj;

    const-string v1, "SDK_CRASHES"

    const/4 v2, 0x4

    const-string v3, "sdk_crashes"

    const/4 v4, 0x5

    const v5, 0x7fffffff

    new-instance v6, Lbrk$a;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lbrk$a;-><init>(I)V

    new-instance v7, Lbrq$a;

    invoke-direct {v7}, Lbrq$a;-><init>()V

    const-string v8, "/android_v2/handle_crashes"

    const-string v9, "crashes"

    invoke-direct/range {v0 .. v9}, Lbrj;-><init>(Ljava/lang/String;ILjava/lang/String;IILbrk$a;Lbrx;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbrj;->e:Lbrj;

    .line 49
    new-instance v0, Lbrj;

    const-string v1, "CURR_BCS"

    const/4 v2, 0x5

    const-string v3, "current_bcs"

    const/16 v4, 0x32

    const v5, 0x7fffffff

    new-instance v6, Lbrk$a;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lbrk$a;-><init>(I)V

    new-instance v7, Lbrp$a;

    invoke-direct {v7}, Lbrp$a;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lbrj;-><init>(Ljava/lang/String;ILjava/lang/String;IILbrk$a;Lbrx;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbrj;->f:Lbrj;

    .line 57
    new-instance v0, Lbrj;

    const-string v1, "NW_BCS"

    const/4 v2, 0x6

    const-string v3, "network_bcs"

    const/16 v4, 0xa

    const v5, 0x7fffffff

    new-instance v6, Lbrk$a;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lbrk$a;-><init>(I)V

    new-instance v7, Lbrp$a;

    invoke-direct {v7}, Lbrp$a;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lbrj;-><init>(Ljava/lang/String;ILjava/lang/String;IILbrk$a;Lbrx;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbrj;->g:Lbrj;

    .line 65
    new-instance v0, Lbrj;

    const-string v1, "PREV_BCS"

    const/4 v2, 0x7

    const-string v3, "previous_bcs"

    const/16 v4, 0x32

    const v5, 0x7fffffff

    new-instance v6, Lbrk$a;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lbrk$a;-><init>(I)V

    new-instance v7, Lbrp$a;

    invoke-direct {v7}, Lbrp$a;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lbrj;-><init>(Ljava/lang/String;ILjava/lang/String;IILbrk$a;Lbrx;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbrj;->h:Lbrj;

    .line 8
    const/16 v0, 0x8

    new-array v0, v0, [Lbrj;

    const/4 v1, 0x0

    sget-object v2, Lbrj;->a:Lbrj;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lbrj;->b:Lbrj;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lbrj;->c:Lbrj;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lbrj;->d:Lbrj;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lbrj;->e:Lbrj;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lbrj;->f:Lbrj;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lbrj;->g:Lbrj;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lbrj;->h:Lbrj;

    aput-object v2, v0, v1

    sput-object v0, Lbrj;->p:[Lbrj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IILbrk$a;Lbrx;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    iput-object p3, p0, Lbrj;->i:Ljava/lang/String;

    .line 90
    iput p4, p0, Lbrj;->j:I

    .line 91
    iput p5, p0, Lbrj;->k:I

    .line 92
    iput-object p6, p0, Lbrj;->l:Lbrk$a;

    .line 93
    iput-object p7, p0, Lbrj;->m:Lbrx;

    .line 94
    iput-object p8, p0, Lbrj;->n:Ljava/lang/String;

    .line 95
    iput-object p9, p0, Lbrj;->o:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbrj;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lbrj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbrj;

    return-object v0
.end method

.method public static values()[Lbrj;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lbrj;->p:[Lbrj;

    invoke-virtual {v0}, [Lbrj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbrj;

    return-object v0
.end method
