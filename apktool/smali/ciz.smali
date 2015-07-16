.class final Lciz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final n:[Lciz;

.field private static o:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/util/Locale;",
            "Lciz;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:[Ljava/lang/String;

.field final b:[Ljava/lang/String;

.field final c:[Ljava/lang/String;

.field final d:[Ljava/lang/String;

.field final e:[Ljava/lang/String;

.field final f:[Ljava/lang/String;

.field final g:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final i:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final j:I

.field final k:I

.field final l:I

.field final m:I

.field private final p:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private final q:I

.field private final r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x40

    new-array v0, v0, [Lciz;

    sput-object v0, Lciz;->n:[Lciz;

    .line 39
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lciz;->o:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;)V
    .locals 5

    .prologue
    const/16 v4, 0xd

    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lciz;->p:Ljava/lang/ref/WeakReference;

    .line 132
    invoke-static {p1}, Lchk;->a(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lciz;->a:[Ljava/lang/String;

    .line 135
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lciz;->b([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lciz;->b:[Ljava/lang/String;

    .line 136
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lciz;->b([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lciz;->c:[Ljava/lang/String;

    .line 137
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lciz;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lciz;->d:[Ljava/lang/String;

    .line 138
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lciz;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lciz;->e:[Ljava/lang/String;

    .line 139
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lciz;->f:[Ljava/lang/String;

    .line 141
    new-array v2, v4, [Ljava/lang/Integer;

    move v0, v1

    .line 142
    :goto_0
    if-ge v0, v4, :cond_0

    .line 143
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lciz;->g:Ljava/util/TreeMap;

    .line 147
    iget-object v0, p0, Lciz;->g:Ljava/util/TreeMap;

    iget-object v3, p0, Lciz;->a:[Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lciz;->a(Ljava/util/TreeMap;[Ljava/lang/String;[Ljava/lang/Integer;)V

    .line 148
    const-string v0, "en"

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lciz;->g:Ljava/util/TreeMap;

    const-string v3, "BCE"

    aget-object v1, v2, v1

    invoke-virtual {v0, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lciz;->g:Ljava/util/TreeMap;

    const-string v1, "CE"

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v0, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_1
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lciz;->h:Ljava/util/TreeMap;

    .line 157
    iget-object v0, p0, Lciz;->h:Ljava/util/TreeMap;

    iget-object v1, p0, Lciz;->b:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lciz;->a(Ljava/util/TreeMap;[Ljava/lang/String;[Ljava/lang/Integer;)V

    .line 158
    iget-object v0, p0, Lciz;->h:Ljava/util/TreeMap;

    iget-object v1, p0, Lciz;->c:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lciz;->a(Ljava/util/TreeMap;[Ljava/lang/String;[Ljava/lang/Integer;)V

    .line 159
    iget-object v0, p0, Lciz;->h:Ljava/util/TreeMap;

    const/4 v1, 0x7

    invoke-static {v0, v1, v2}, Lciz;->a(Ljava/util/TreeMap;I[Ljava/lang/Integer;)V

    .line 161
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lciz;->i:Ljava/util/TreeMap;

    .line 162
    iget-object v0, p0, Lciz;->i:Ljava/util/TreeMap;

    iget-object v1, p0, Lciz;->d:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lciz;->a(Ljava/util/TreeMap;[Ljava/lang/String;[Ljava/lang/Integer;)V

    .line 163
    iget-object v0, p0, Lciz;->i:Ljava/util/TreeMap;

    iget-object v1, p0, Lciz;->e:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lciz;->a(Ljava/util/TreeMap;[Ljava/lang/String;[Ljava/lang/Integer;)V

    .line 164
    iget-object v0, p0, Lciz;->i:Ljava/util/TreeMap;

    const/16 v1, 0xc

    invoke-static {v0, v1, v2}, Lciz;->a(Ljava/util/TreeMap;I[Ljava/lang/Integer;)V

    .line 166
    iget-object v0, p0, Lciz;->a:[Ljava/lang/String;

    invoke-static {v0}, Lciz;->c([Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lciz;->j:I

    .line 167
    iget-object v0, p0, Lciz;->b:[Ljava/lang/String;

    invoke-static {v0}, Lciz;->c([Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lciz;->k:I

    .line 168
    iget-object v0, p0, Lciz;->c:[Ljava/lang/String;

    invoke-static {v0}, Lciz;->c([Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lciz;->q:I

    .line 169
    iget-object v0, p0, Lciz;->d:[Ljava/lang/String;

    invoke-static {v0}, Lciz;->c([Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lciz;->l:I

    .line 170
    iget-object v0, p0, Lciz;->e:[Ljava/lang/String;

    invoke-static {v0}, Lciz;->c([Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lciz;->r:I

    .line 171
    iget-object v0, p0, Lciz;->f:[Ljava/lang/String;

    invoke-static {v0}, Lciz;->c([Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lciz;->m:I

    .line 172
    return-void
.end method

.method public static a(Ljava/util/Locale;)Lciz;
    .locals 4

    .prologue
    .line 42
    if-nez p0, :cond_0

    .line 43
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 45
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    and-int/lit8 v1, v0, 0x3f

    .line 46
    sget-object v0, Lciz;->n:[Lciz;

    aget-object v0, v0, v1

    .line 47
    if-eqz v0, :cond_1

    iget-object v2, v0, Lciz;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_1

    .line 58
    :goto_0
    return-object v0

    .line 50
    :cond_1
    sget-object v2, Lciz;->o:Ljava/util/WeakHashMap;

    monitor-enter v2

    .line 51
    :try_start_0
    sget-object v0, Lciz;->o:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lciz;

    .line 52
    if-nez v0, :cond_2

    .line 53
    new-instance v0, Lciz;

    invoke-direct {v0, p0}, Lciz;-><init>(Ljava/util/Locale;)V

    .line 54
    sget-object v3, Lciz;->o:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    sget-object v2, Lciz;->n:[Lciz;

    aput-object v0, v2, v1

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Ljava/util/TreeMap;I[Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I[",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x1

    :goto_0
    if-gt v0, p1, :cond_0

    .line 88
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method

.method private static a(Ljava/util/TreeMap;[Ljava/lang/String;[Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    array-length v0, p1

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 79
    aget-object v1, p1, v0

    .line 80
    if-eqz v1, :cond_0

    .line 81
    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 84
    :cond_1
    return-void
.end method

.method private static a([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xd

    .line 62
    new-array v1, v3, [Ljava/lang/String;

    .line 63
    const/4 v0, 0x1

    :goto_0
    if-ge v0, v3, :cond_0

    .line 64
    add-int/lit8 v2, v0, -0x1

    aget-object v2, p0, v2

    aput-object v2, v1, v0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    return-object v1
.end method

.method private static b([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    .line 70
    new-array v3, v4, [Ljava/lang/String;

    move v2, v1

    .line 71
    :goto_0
    if-ge v2, v4, :cond_1

    .line 72
    const/4 v0, 0x7

    if-ge v2, v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    :goto_1
    aget-object v0, p0, v0

    aput-object v0, v3, v2

    .line 71
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 72
    goto :goto_1

    .line 74
    :cond_1
    return-object v3
.end method

.method private static c([Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 94
    array-length v0, p0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ltz v2, :cond_0

    .line 95
    aget-object v0, p0, v2

    .line 96
    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 98
    if-le v0, v1, :cond_1

    :goto_1
    move v1, v0

    move v0, v2

    .line 102
    goto :goto_0

    .line 103
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method
